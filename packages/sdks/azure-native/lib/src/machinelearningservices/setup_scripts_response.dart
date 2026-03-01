// ignore_for_file: unused_element, unnecessary_cast

import 'scripts_to_execute_response.dart';

/// Details of customized scripts to execute for setting up the cluster.
class SetupScriptsResponse {
  /// Customized setup scripts
  final ScriptsToExecuteResponse? scripts;

  /// Creates a new [SetupScriptsResponse].
  /// [scripts] Customized setup scripts
  SetupScriptsResponse({
    this.scripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scripts': ?scripts == null ? null : scripts!.toMap(),
    };
  }

  factory SetupScriptsResponse.fromMap(Map<String, dynamic> map) {
    return SetupScriptsResponse(
      scripts: map['scripts'] == null ? null : ScriptsToExecuteResponse.fromMap((map['scripts'] as Map).cast<String, dynamic>()),
    );
  }
}

