// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_scale_rule.dart';

/// Scaling configurations for event driven jobs.
class JobScale {
  /// Maximum number of job executions that are created for a trigger, default 100.
  final int? maxExecutions;
  /// Minimum number of job executions that are created for a trigger, default 0
  final int? minExecutions;
  /// Interval to check each event source in seconds. Defaults to 30s
  final int? pollingInterval;
  /// Scaling rules.
  final List<JobScaleRule>? rules;

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
      'rules': ?rules == null ? null : pulumi.Input.encodeList<JobScaleRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory JobScale.fromMap(Map<String, dynamic> map) {
    return JobScale(
      maxExecutions: map['maxExecutions'] == null ? null : map['maxExecutions'] as int,
      minExecutions: map['minExecutions'] == null ? null : map['minExecutions'] as int,
      pollingInterval: map['pollingInterval'] == null ? null : map['pollingInterval'] as int,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<JobScaleRule>(map['rules'], (value) => JobScaleRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

