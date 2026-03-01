// ignore_for_file: unused_element, unnecessary_cast

import 'script_reference_response.dart';

/// Customized setup scripts
class ScriptsToExecuteResponse {
  /// Script that's run only once during provision of the compute.
  final ScriptReferenceResponse? creationScript;
  /// Script that's run every time the machine starts.
  final ScriptReferenceResponse? startupScript;

  /// Creates a new [ScriptsToExecuteResponse].
  /// [creationScript] Script that's run only once during provision of the compute.
  /// [startupScript] Script that's run every time the machine starts.
  ScriptsToExecuteResponse({
    this.creationScript,
    this.startupScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationScript': ?creationScript == null ? null : creationScript!.toMap(),
      'startupScript': ?startupScript == null ? null : startupScript!.toMap(),
    };
  }

  factory ScriptsToExecuteResponse.fromMap(Map<String, dynamic> map) {
    return ScriptsToExecuteResponse(
      creationScript: map['creationScript'] == null ? null : ScriptReferenceResponse.fromMap((map['creationScript'] as Map).cast<String, dynamic>()),
      startupScript: map['startupScript'] == null ? null : ScriptReferenceResponse.fromMap((map['startupScript'] as Map).cast<String, dynamic>()),
    );
  }
}

