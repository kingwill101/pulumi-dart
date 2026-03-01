// ignore_for_file: unused_element, unnecessary_cast


class SqlContainerConflictResolutionPolicy {
  /// The conflict resolution path in the case of `LastWriterWins` mode.
  final String? conflictResolutionPath;
  /// The procedure to resolve conflicts in the case of `Custom` mode.
  final String? conflictResolutionProcedure;
  /// Indicates the conflict resolution mode. Possible values include: `LastWriterWins`, `Custom`.
  final String mode;

  /// Creates a new [SqlContainerConflictResolutionPolicy].
  /// [conflictResolutionPath] The conflict resolution path in the case of `LastWriterWins` mode.
  /// [conflictResolutionProcedure] The procedure to resolve conflicts in the case of `Custom` mode.
  /// [mode] Indicates the conflict resolution mode. Possible values include: `LastWriterWins`, `Custom`.
  SqlContainerConflictResolutionPolicy({
    this.conflictResolutionPath,
    this.conflictResolutionProcedure,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflictResolutionPath': ?conflictResolutionPath,
      'conflictResolutionProcedure': ?conflictResolutionProcedure,
      'mode': mode,
    };
  }

  factory SqlContainerConflictResolutionPolicy.fromMap(Map<String, dynamic> map) {
    return SqlContainerConflictResolutionPolicy(
      conflictResolutionPath: map['conflictResolutionPath'] == null ? null : map['conflictResolutionPath'] as String,
      conflictResolutionProcedure: map['conflictResolutionProcedure'] == null ? null : map['conflictResolutionProcedure'] as String,
      mode: map['mode'] as String,
    );
  }
}

