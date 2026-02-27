// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'automation_rule_condition_response.dart';
import 'repair_mode_response.dart';

/// The `RepairRolloutRule` automation rule will automatically repair a failed `Rollout`.
class RepairRolloutRuleResponse {
  /// Information around the state of the 'Automation' rule.
  final AutomationRuleConditionResponse condition;

  /// Optional. Jobs to repair. Proceeds only after job name matched any one in the list, or for all jobs if unspecified or empty. The phase that includes the job must match the phase ID specified in `source_phase`. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final List<String> jobs;

  /// Defines the types of automatic repair actions for failed jobs.
  final List<RepairModeResponse> repairModes;

  /// Optional. Phases within which jobs are subject to automatic repair actions on failure. Proceeds only after phase name matched any one in the list, or for all phases if unspecified. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final List<String> sourcePhases;

  RepairRolloutRuleResponse({
    required this.condition,
    required this.jobs,
    required this.repairModes,
    required this.sourcePhases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition.toMap();
    map['jobs'] = jobs;
    map['repairModes'] =
        Input.encodeList<RepairModeResponse, Map<String, dynamic>>(
            repairModes, (value) => value.toMap());
    map['sourcePhases'] = sourcePhases;
    return map;
  }

  factory RepairRolloutRuleResponse.fromMap(Map<String, dynamic> map) {
    return RepairRolloutRuleResponse(
      condition: AutomationRuleConditionResponse.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      jobs: (map['jobs'] as List).cast<String>(),
      repairModes: Input.decodeList<RepairModeResponse>(
          map['repairModes'],
          (value) => RepairModeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      sourcePhases: (map['sourcePhases'] as List).cast<String>(),
    );
  }
}
