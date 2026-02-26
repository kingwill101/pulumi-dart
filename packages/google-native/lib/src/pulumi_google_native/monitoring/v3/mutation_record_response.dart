// ignore_for_file: unused_element, unnecessary_cast

/// Describes a change made to a configuration.
class MutationRecordResponse {
  /// When the change occurred.
  final String mutateTime;

  /// The email address of the user making the change.
  final String mutatedBy;

  MutationRecordResponse({
    required this.mutateTime,
    required this.mutatedBy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mutateTime'] = mutateTime;
    map['mutatedBy'] = mutatedBy;
    return map;
  }

  factory MutationRecordResponse.fromMap(Map<String, dynamic> map) {
    return MutationRecordResponse(
      mutateTime: map['mutateTime'] as String,
      mutatedBy: map['mutatedBy'] as String,
    );
  }
}
