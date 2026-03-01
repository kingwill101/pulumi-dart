// ignore_for_file: unused_element, unnecessary_cast

/// Describes a change made to a configuration.
class MutationRecordResponse {
  /// When the change occurred.
  final String mutateTime;

  /// The email address of the user making the change.
  final String mutatedBy;

  /// Creates a new [MutationRecordResponse].
  /// [mutateTime] When the change occurred.
  /// [mutatedBy] The email address of the user making the change.
  MutationRecordResponse({required this.mutateTime, required this.mutatedBy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mutateTime': mutateTime, 'mutatedBy': mutatedBy};
  }

  factory MutationRecordResponse.fromMap(Map<String, dynamic> map) {
    return MutationRecordResponse(
      mutateTime: map['mutateTime'] as String,
      mutatedBy: map['mutatedBy'] as String,
    );
  }
}
