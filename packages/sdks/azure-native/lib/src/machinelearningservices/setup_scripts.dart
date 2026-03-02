// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scripts_to_execute.dart';

/// Details of customized scripts to execute for setting up the cluster.
class SetupScripts {
  /// Customized setup scripts
  final pulumi.Input<ScriptsToExecute>? scripts;

  /// Creates a new [SetupScripts].
  /// [scripts] Customized setup scripts
  SetupScripts({
    this.scripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scripts': ?pulumi.Input.mapOptionalInputValue<ScriptsToExecute, Map<String, dynamic>>(scripts, (value) => value.toMap()),
    };
  }

  factory SetupScripts.fromMap(Map<String, dynamic> map) {
    return SetupScripts(
      scripts: map['scripts'] == null ? null : (ScriptsToExecute.fromMap((map['scripts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

