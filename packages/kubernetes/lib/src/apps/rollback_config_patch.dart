// ignore_for_file: unused_element, unnecessary_cast


/// DEPRECATED.
class RollbackConfigPatch {
  /// The revision to rollback to. If set to 0, rollback to the last revision.
  final int? revision;

  /// Creates a new [RollbackConfigPatch].
  /// [revision] The revision to rollback to. If set to 0, rollback to the last revision.
  RollbackConfigPatch({
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revision': ?revision,
    };
  }

  factory RollbackConfigPatch.fromMap(Map<String, dynamic> map) {
    return RollbackConfigPatch(
      revision: map['revision'] == null ? null : map['revision'] as int,
    );
  }
}

