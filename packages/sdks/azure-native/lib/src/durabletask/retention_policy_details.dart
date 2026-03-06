// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a retention policy
class RetentionPolicyDetails {
  /// The orchestration state to which this policy applies. If omitted, the policy applies to all purgeable orchestration states.
  final pulumi.Input<String>? orchestrationState;
  /// The retention period in days after which the orchestration will be purged automatically
  final pulumi.Input<int> retentionPeriodInDays;

  /// Creates a new [RetentionPolicyDetails].
  /// [orchestrationState] The orchestration state to which this policy applies. If omitted, the policy applies to all purgeable orchestration states.
  /// [retentionPeriodInDays] The retention period in days after which the orchestration will be purged automatically
  const RetentionPolicyDetails({
    this.orchestrationState,
    required this.retentionPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orchestrationState': ?orchestrationState,
      'retentionPeriodInDays': retentionPeriodInDays,
    };
  }

  factory RetentionPolicyDetails.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyDetails(
      orchestrationState: (() { final guardedValue = map['orchestrationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriodInDays: pulumi.Input.fromValue(map['retentionPeriodInDays'] as int),
    );
  }
}

