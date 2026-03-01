// ignore_for_file: unused_element, unnecessary_cast


/// Continuation settings for execute data flow activity.
class ContinuationSettingsReference {
  /// Continuation TTL in minutes.
  final dynamic continuationTtlInMinutes;
  /// Customized checkpoint key.
  final dynamic customizedCheckpointKey;
  /// Idle condition.
  final dynamic idleCondition;

  /// Creates a new [ContinuationSettingsReference].
  /// [continuationTtlInMinutes] Continuation TTL in minutes.
  /// [customizedCheckpointKey] Customized checkpoint key.
  /// [idleCondition] Idle condition.
  ContinuationSettingsReference({
    this.continuationTtlInMinutes,
    this.customizedCheckpointKey,
    this.idleCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuationTtlInMinutes': ?continuationTtlInMinutes,
      'customizedCheckpointKey': ?customizedCheckpointKey,
      'idleCondition': ?idleCondition,
    };
  }

  factory ContinuationSettingsReference.fromMap(Map<String, dynamic> map) {
    return ContinuationSettingsReference(
      continuationTtlInMinutes: map['continuationTtlInMinutes'] == null ? null : map['continuationTtlInMinutes'],
      customizedCheckpointKey: map['customizedCheckpointKey'] == null ? null : map['customizedCheckpointKey'],
      idleCondition: map['idleCondition'] == null ? null : map['idleCondition'],
    );
  }
}

