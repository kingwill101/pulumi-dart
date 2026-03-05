// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_scale_rule.dart';

/// Scaling configurations for event driven jobs.
class JobScale {
  /// Maximum number of job executions that are created for a trigger, default 100.
  final pulumi.Input<int>? maxExecutions;
  /// Minimum number of job executions that are created for a trigger, default 0
  final pulumi.Input<int>? minExecutions;
  /// Interval to check each event source in seconds. Defaults to 30s
  final pulumi.Input<int>? pollingInterval;
  /// Scaling rules.
  final pulumi.Input<List<JobScaleRule>>? rules;

  /// Creates a new [JobScale].
  /// [maxExecutions] Maximum number of job executions that are created for a trigger, default 100.
  /// [minExecutions] Minimum number of job executions that are created for a trigger, default 0
  /// [pollingInterval] Interval to check each event source in seconds. Defaults to 30s
  /// [rules] Scaling rules.
  JobScale({
    this.maxExecutions,
    this.minExecutions,
    this.pollingInterval,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxExecutions': ?maxExecutions,
      'minExecutions': ?minExecutions,
      'pollingInterval': ?pollingInterval,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<JobScaleRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<JobScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobScale.fromMap(Map<String, dynamic> map) {
    return JobScale(
      maxExecutions: (() { final guardedValue = map['maxExecutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minExecutions: (() { final guardedValue = map['minExecutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pollingInterval: (() { final guardedValue = map['pollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobScaleRule>(guardedValue, (value) => JobScaleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

