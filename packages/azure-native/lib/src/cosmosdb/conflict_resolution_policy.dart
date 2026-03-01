// ignore_for_file: unused_element, unnecessary_cast


/// The conflict resolution policy for the container.
class ConflictResolutionPolicy {
  /// The conflict resolution path in the case of LastWriterWins mode.
  final String? conflictResolutionPath;
  /// The procedure to resolve conflicts in the case of custom mode.
  final String? conflictResolutionProcedure;
  /// Indicates the conflict resolution mode.
  final String? mode;

  /// Creates a new [ConflictResolutionPolicy].
  /// [conflictResolutionPath] The conflict resolution path in the case of LastWriterWins mode.
  /// [conflictResolutionProcedure] The procedure to resolve conflicts in the case of custom mode.
  /// [mode] Indicates the conflict resolution mode.
  ConflictResolutionPolicy({
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
      conflictResolutionPath: map['conflictResolutionPath'] == null ? null : map['conflictResolutionPath'] as String,
      conflictResolutionProcedure: map['conflictResolutionProcedure'] == null ? null : map['conflictResolutionProcedure'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

