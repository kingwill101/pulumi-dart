// ignore_for_file: unused_element, unnecessary_cast


/// Describes a change made to a configuration.
class MutationRecord {
  /// When the change occurred.
  final String? mutateTime;
  /// The email address of the user making the change.
  final String? mutatedBy;

  /// Creates a new [MutationRecord].
  /// [mutateTime] When the change occurred.
  /// [mutatedBy] The email address of the user making the change.
  MutationRecord({
    this.mutateTime,
    this.mutatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mutateTime': ?mutateTime,
      'mutatedBy': ?mutatedBy,
    };
  }

  factory MutationRecord.fromMap(Map<String, dynamic> map) {
    return MutationRecord(
      mutateTime: map['mutateTime'] == null ? null : map['mutateTime'] as String,
      mutatedBy: map['mutatedBy'] == null ? null : map['mutatedBy'] as String,
    );
  }
}

