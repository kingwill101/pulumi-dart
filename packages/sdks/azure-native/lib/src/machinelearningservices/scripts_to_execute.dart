// ignore_for_file: unused_element, unnecessary_cast

import 'script_reference.dart';

/// Customized setup scripts
class ScriptsToExecute {
  /// Script that's run only once during provision of the compute.
  final ScriptReference? creationScript;
  /// Script that's run every time the machine starts.
  final ScriptReference? startupScript;

  /// Creates a new [ScriptsToExecute].
  /// [creationScript] Script that's run only once during provision of the compute.
  /// [startupScript] Script that's run every time the machine starts.
  ScriptsToExecute({
    this.creationScript,
    this.startupScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationScript': ?creationScript == null ? null : creationScript!.toMap(),
      'startupScript': ?startupScript == null ? null : startupScript!.toMap(),
    };
  }

  factory ScriptsToExecute.fromMap(Map<String, dynamic> map) {
    return ScriptsToExecute(
      creationScript: map['creationScript'] == null ? null : ScriptReference.fromMap((map['creationScript'] as Map).cast<String, dynamic>()),
      startupScript: map['startupScript'] == null ? null : ScriptReference.fromMap((map['startupScript'] as Map).cast<String, dynamic>()),
    );
  }
}

