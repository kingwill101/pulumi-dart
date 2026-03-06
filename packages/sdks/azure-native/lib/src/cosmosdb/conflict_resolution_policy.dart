// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The conflict resolution policy for the container.
class ConflictResolutionPolicy {
  /// The conflict resolution path in the case of LastWriterWins mode.
  final pulumi.Input<String>? conflictResolutionPath;
  /// The procedure to resolve conflicts in the case of custom mode.
  final pulumi.Input<String>? conflictResolutionProcedure;
  /// Indicates the conflict resolution mode.
  final pulumi.Input<String>? mode;

  /// Creates a new [ConflictResolutionPolicy].
  /// [conflictResolutionPath] The conflict resolution path in the case of LastWriterWins mode.
  /// [conflictResolutionProcedure] The procedure to resolve conflicts in the case of custom mode.
  /// [mode] Indicates the conflict resolution mode.
  const ConflictResolutionPolicy({
    this.conflictResolutionPath,
    this.conflictResolutionProcedure,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictResolutionPath': ?conflictResolutionPath,
      'conflictResolutionProcedure': ?conflictResolutionProcedure,
      'mode': ?mode,
    };
  }

  factory ConflictResolutionPolicy.fromMap(Map<String, dynamic> map) {
    return ConflictResolutionPolicy(
      conflictResolutionPath: (() { final guardedValue = map['conflictResolutionPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conflictResolutionProcedure: (() { final guardedValue = map['conflictResolutionProcedure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

