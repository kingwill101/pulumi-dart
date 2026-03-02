// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_scale_rule_response.dart';

/// Scaling configurations for event driven jobs.
class JobScaleResponse {
  /// Maximum number of job executions that are created for a trigger, default 100.
  final pulumi.Input<int>? maxExecutions;
  /// Minimum number of job executions that are created for a trigger, default 0
  final pulumi.Input<int>? minExecutions;
  /// Interval to check each event source in seconds. Defaults to 30s
  final pulumi.Input<int>? pollingInterval;
  /// Scaling rules.
  final pulumi.Input<List<JobScaleRuleResponse>>? rules;

  /// Creates a new [JobScaleResponse].
  /// [maxExecutions] Maximum number of job executions that are created for a trigger, default 100.
  /// [minExecutions] Minimum number of job executions that are created for a trigger, default 0
  /// [pollingInterval] Interval to check each event source in seconds. Defaults to 30s
  /// [rules] Scaling rules.
  JobScaleResponse({
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
      'rules': ?pulumi.Input.mapOptionalInputValue<List<JobScaleRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<JobScaleRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobScaleResponse.fromMap(Map<String, dynamic> map) {
    return JobScaleResponse(
      maxExecutions: map['maxExecutions'] == null ? null : (map['maxExecutions']! as int).input(),
      minExecutions: map['minExecutions'] == null ? null : (map['minExecutions']! as int).input(),
      pollingInterval: map['pollingInterval'] == null ? null : (map['pollingInterval']! as int).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<JobScaleRuleResponse>(map['rules']!, (value) => JobScaleRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

