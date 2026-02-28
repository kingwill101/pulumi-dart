import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main() async {
  final workspace = await automation.LocalWorkspace.create(
    automation.LocalWorkspaceOptions(workDir: Directory.current.path),
  );

  final resolved = await workspace.pulumiVersion(skipCheck: true);
  const minVersion = automation.PulumiVersion(major: 2, minor: 21, patch: 1);

  final cases = <Map<String, Object?>>[
    <String, Object?>{
      'currentVersion': '100.0.0',
      'expectError': true,
      'optOut': false,
    },
    <String, Object?>{
      'currentVersion': '1.0.0',
      'expectError': true,
      'optOut': false,
    },
    <String, Object?>{
      'currentVersion': 'v2.22.0',
      'expectError': false,
      'optOut': false,
    },
    <String, Object?>{
      'currentVersion': 'v2.21.1',
      'expectError': false,
      'optOut': false,
    },
    <String, Object?>{
      'currentVersion': 'v2.21.1-alpha.1234',
      'expectError': true,
      'optOut': false,
    },
    <String, Object?>{
      'currentVersion': 'invalid',
      'expectError': true,
      'optOut': false,
    },
    <String, Object?>{
      'currentVersion': 'invalid',
      'expectError': false,
      'optOut': true,
    },
  ];

  var allCasesPassed = true;
  for (final caseData in cases) {
    final currentVersion = caseData['currentVersion']! as String;
    final expectError = caseData['expectError']! as bool;
    final optOut = caseData['optOut']! as bool;

    var observedError = false;
    try {
      automation.parseAndValidatePulumiVersion(
          minVersion, currentVersion, optOut);
    } on automation.AutomationInvalidVersionException {
      observedError = true;
    }

    if (observedError != expectError) {
      allCasesPassed = false;
      break;
    }
  }

  final payload = <String, Object?>{
    'resolvedPulumiVersion': resolved?.toString(),
    'allVersionValidationCasesPassed': allCasesPassed,
  };

  stdout.writeln('AUTOMATION_RESULT:${jsonEncode(payload)}');
}
