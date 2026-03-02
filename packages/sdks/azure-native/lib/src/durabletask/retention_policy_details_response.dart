// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a retention policy
class RetentionPolicyDetailsResponse {
  /// The orchestration state to which this policy applies. If omitted, the policy applies to all purgeable orchestration states.
  final pulumi.Input<String>? orchestrationState;
  /// The retention period in days after which the orchestration will be purged automatically
  final pulumi.Input<int> retentionPeriodInDays;

  /// Creates a new [RetentionPolicyDetailsResponse].
  /// [orchestrationState] The orchestration state to which this policy applies. If omitted, the policy applies to all purgeable orchestration states.
  /// [retentionPeriodInDays] The retention period in days after which the orchestration will be purged automatically
  RetentionPolicyDetailsResponse({
    this.orchestrationState,
    required this.retentionPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orchestrationState': ?orchestrationState,
      'retentionPeriodInDays': retentionPeriodInDays,
    };
  }

  factory RetentionPolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyDetailsResponse(
      orchestrationState: map['orchestrationState'] == null ? null : (map['orchestrationState']! as String).input(),
      retentionPeriodInDays: (map['retentionPeriodInDays'] as int).input(),
    );
  }
}

