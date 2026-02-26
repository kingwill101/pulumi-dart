// ignore_for_file: unused_element, unnecessary_cast

import '../lifecycle_policy_policy_details_schedule_create_rule_scripts/lifecycle_policy_policy_details_schedule_create_rule_scripts.dart';

class LifecyclePolicyPolicyDetailsScheduleCreateRule {
  /// The schedule, as a Cron expression. The schedule interval must be between 1 hour and 1 year. Conflicts with <span pulumi-lang-nodejs="`interval`" pulumi-lang-dotnet="`Interval`" pulumi-lang-go="`interval`" pulumi-lang-python="`interval`" pulumi-lang-yaml="`interval`" pulumi-lang-java="`interval`">`interval`</span>, <span pulumi-lang-nodejs="`intervalUnit`" pulumi-lang-dotnet="`IntervalUnit`" pulumi-lang-go="`intervalUnit`" pulumi-lang-python="`interval_unit`" pulumi-lang-yaml="`intervalUnit`" pulumi-lang-java="`intervalUnit`">`interval_unit`</span>, and <span pulumi-lang-nodejs="`times`" pulumi-lang-dotnet="`Times`" pulumi-lang-go="`times`" pulumi-lang-python="`times`" pulumi-lang-yaml="`times`" pulumi-lang-java="`times`">`times`</span>. For details on valid Cron expressions, see [here](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-scheduled-rule-pattern.html#eb-cron-expressions).
  final String? cronExpression;
  final int? interval;
  final String? intervalUnit;

  /// Specifies the destination for snapshots created by the policy. To create snapshots in the same Region as the source resource, specify `CLOUD`. To create snapshots on the same Outpost as the source resource, specify `OUTPOST_LOCAL`. If you omit this parameter, `CLOUD` is used by default. If the policy targets resources in an AWS Region, then you must create snapshots in the same Region as the source resource. If the policy targets resources on an Outpost, then you can create snapshots on the same Outpost as the source resource, or in the Region of that Outpost. Valid values are `CLOUD` and `OUTPOST_LOCAL`.
  final String? location;

  /// Specifies pre and/or post scripts for a snapshot lifecycle policy that targets instances. Valid only when <span pulumi-lang-nodejs="`resourceType`" pulumi-lang-dotnet="`ResourceType`" pulumi-lang-go="`resourceType`" pulumi-lang-python="`resource_type`" pulumi-lang-yaml="`resourceType`" pulumi-lang-java="`resourceType`">`resource_type`</span> is INSTANCE. See the <span pulumi-lang-nodejs="`scripts`" pulumi-lang-dotnet="`Scripts`" pulumi-lang-go="`scripts`" pulumi-lang-python="`scripts`" pulumi-lang-yaml="`scripts`" pulumi-lang-java="`scripts`">`scripts`</span> configuration block.
  final LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts? scripts;

  /// A list of times in 24 hour clock format that sets when the lifecycle policy should be evaluated. Max of 1. Conflicts with <span pulumi-lang-nodejs="`cronExpression`" pulumi-lang-dotnet="`CronExpression`" pulumi-lang-go="`cronExpression`" pulumi-lang-python="`cron_expression`" pulumi-lang-yaml="`cronExpression`" pulumi-lang-java="`cronExpression`">`cron_expression`</span>. Must be set if <span pulumi-lang-nodejs="`interval`" pulumi-lang-dotnet="`Interval`" pulumi-lang-go="`interval`" pulumi-lang-python="`interval`" pulumi-lang-yaml="`interval`" pulumi-lang-java="`interval`">`interval`</span> is set.
  final String? times;

  LifecyclePolicyPolicyDetailsScheduleCreateRule({
    this.cronExpression,
    this.interval,
    this.intervalUnit,
    this.location,
    this.scripts,
    this.times,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cronExpressionValue = cronExpression;
    if (cronExpressionValue != null) {
      map['cronExpression'] = cronExpressionValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final intervalUnitValue = intervalUnit;
    if (intervalUnitValue != null) {
      map['intervalUnit'] = intervalUnitValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final scriptsValue = scripts;
    if (scriptsValue != null) {
      map['scripts'] = scriptsValue.toMap();
    }
    final timesValue = times;
    if (timesValue != null) {
      map['times'] = timesValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailsScheduleCreateRule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCreateRule(
      cronExpression: map['cronExpression'] == null
          ? null
          : map['cronExpression'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      intervalUnit:
          map['intervalUnit'] == null ? null : map['intervalUnit'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      scripts: map['scripts'] == null
          ? null
          : LifecyclePolicyPolicyDetailsScheduleCreateRuleScripts.fromMap(
              (map['scripts'] as Map).cast<String, dynamic>()),
      times: map['times'] == null ? null : map['times'] as String,
    );
  }
}
