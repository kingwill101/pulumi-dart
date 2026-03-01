// ignore_for_file: unused_element, unnecessary_cast

import 'retention_duration.dart';

/// Simple policy retention.
class SimpleRetentionPolicy {
  /// Retention duration of the protection policy.
  final RetentionDuration? retentionDuration;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'SimpleRetentionPolicy'.
  final String retentionPolicyType;

  /// Creates a new [SimpleRetentionPolicy].
  /// [retentionDuration] Retention duration of the protection policy.
  /// [retentionPolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  SimpleRetentionPolicy({
    this.retentionDuration,
    required this.retentionPolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDuration': ?retentionDuration == null ? null : retentionDuration!.toMap(),
      'retentionPolicyType': retentionPolicyType,
    };
  }

  factory SimpleRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return SimpleRetentionPolicy(
      retentionDuration: map['retentionDuration'] == null ? null : RetentionDuration.fromMap((map['retentionDuration'] as Map).cast<String, dynamic>()),
      retentionPolicyType: map['retentionPolicyType'] as String,
    );
  }
}

