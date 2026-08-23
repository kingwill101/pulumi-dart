// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountSettingsMinimumThroughputBillingCommitment {
  final pulumi.Input<String>? earliestAllowedEndAt;
  final pulumi.Input<String>? endedAt;
  final pulumi.Input<String>? startedAt;
  /// Desired status of the minimum throughput billing commitment. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> status;
  final pulumi.Input<String>? statusActual;

  /// Creates a new [AccountSettingsMinimumThroughputBillingCommitment].
  /// [earliestAllowedEndAt] Optional.
  /// [endedAt] Optional.
  /// [startedAt] Optional.
  /// [status] Desired status of the minimum throughput billing commitment. Valid values: `ENABLED`, `DISABLED`.
  /// [statusActual] Optional.
  const AccountSettingsMinimumThroughputBillingCommitment({
    this.earliestAllowedEndAt,
    this.endedAt,
    this.startedAt,
    required this.status,
    this.statusActual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestAllowedEndAt': ?earliestAllowedEndAt,
      'endedAt': ?endedAt,
      'startedAt': ?startedAt,
      'status': status,
      'statusActual': ?statusActual,
    };
  }

  factory AccountSettingsMinimumThroughputBillingCommitment.fromMap(Map<String, dynamic> map) {
    return AccountSettingsMinimumThroughputBillingCommitment(
      earliestAllowedEndAt: (() { final guardedValue = map['earliestAllowedEndAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endedAt: (() { final guardedValue = map['endedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedAt: (() { final guardedValue = map['startedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusActual: (() { final guardedValue = map['statusActual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
