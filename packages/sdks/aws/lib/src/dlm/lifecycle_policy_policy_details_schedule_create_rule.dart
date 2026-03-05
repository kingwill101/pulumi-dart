// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details_schedule_create_rule_scripts.dart';

class LifecyclePolicyPolicyDetailsScheduleCreateRule {
  /// The schedule, as a Cron expression. The schedule interval must be between 1 hour and 1 year. Conflicts with `interval`, `interval_unit`, and `times`. For details on valid Cron expressions, see [here](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-scheduled-rule-pattern.html#eb-cron-expressions).
  final pulumi.Input<String>? cronExpression;
  final pulumi.Input<int>? interval;
  final pulumi.Input<String>? intervalUnit;
  /// Specifies the destination for snapshots created by the policy. To create snapshots in the same Region as the source resource, specify `CLOUD`. To create snapshots on the same Outpost as the source resource, specify `OUTPOST_LOCAL`. If you omit this parameter, `CLOUD` is used by default. If the policy targets resources in an AWS Region, then you must create snapshots in the same Region as the source resource. If the policy targets resources on an Outpost, then you can create snapshots on the same Outpost as the source resource, or in the Region of that Outpost. Valid values are `CLOUD` and `OUTPOST_LOCAL`.
  final pulumi.Input<String>? location;
  /// Specifies pre and/or post scripts for a snapshot lifecycle policy that targets instances. Valid only when `resource_type` is INSTANCE. See the `scripts` configuration block.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts>? scripts;
  /// A list of times in 24 hour clock format that sets when the lifecycle policy should be evaluated. Max of 1. Conflicts with `cron_expression`. Must be set if `interval` is set.
  final pulumi.Input<String>? times;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleCreateRule].
  /// [cronExpression] The schedule, as a Cron expression. The schedule interval must be between 1 hour and 1 year. Conflicts with `interval`, `interval_unit`, and `times`. For details on valid Cron expressions, see [here](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-scheduled-rule-pattern.html#eb-cron-expressions).
  /// [interval] Optional.
  /// [intervalUnit] Optional.
  /// [location] Specifies the destination for snapshots created by the policy. To create snapshots in the same Region as the source resource, specify `CLOUD`. To create snapshots on the same Outpost as the source resource, specify `OUTPOST_LOCAL`. If you omit this parameter, `CLOUD` is used by default. If the policy targets resources in an AWS Region, then you must create snapshots in the same Region as the source resource. If the policy targets resources on an Outpost, then you can create snapshots on the same Outpost as the source resource, or in the Region of that Outpost. Valid values are `CLOUD` and `OUTPOST_LOCAL`.
  /// [scripts] Specifies pre and/or post scripts for a snapshot lifecycle policy that targets instances. Valid only when `resource_type` is INSTANCE. See the `scripts` configuration block.
  /// [times] A list of times in 24 hour clock format that sets when the lifecycle policy should be evaluated. Max of 1. Conflicts with `cron_expression`. Must be set if `interval` is set.
  LifecyclePolicyPolicyDetailsScheduleCreateRule({
    this.cronExpression,
    this.interval,
    this.intervalUnit,
    this.location,
    this.scripts,
    this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': ?cronExpression,
      'interval': ?interval,
      'intervalUnit': ?intervalUnit,
      'location': ?location,
      'scripts': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts, Map<String, dynamic>>(scripts, (value) => value.toMap()),
      'times': ?times,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleCreateRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCreateRule(
      cronExpression: (() { final guardedValue = map['cronExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intervalUnit: (() { final guardedValue = map['intervalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scripts: (() { final guardedValue = map['scripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      times: (() { final guardedValue = map['times']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

