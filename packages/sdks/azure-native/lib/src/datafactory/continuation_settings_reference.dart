// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Continuation settings for execute data flow activity.
class ContinuationSettingsReference {
  /// Continuation TTL in minutes.
  final pulumi.Input<dynamic>? continuationTtlInMinutes;
  /// Customized checkpoint key.
  final pulumi.Input<dynamic>? customizedCheckpointKey;
  /// Idle condition.
  final pulumi.Input<dynamic>? idleCondition;

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
      continuationTtlInMinutes: (() { final guardedValue = map['continuationTtlInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      customizedCheckpointKey: (() { final guardedValue = map['customizedCheckpointKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      idleCondition: (() { final guardedValue = map['idleCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

