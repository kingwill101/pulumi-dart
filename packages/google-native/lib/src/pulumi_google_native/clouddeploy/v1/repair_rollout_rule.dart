// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repair_mode.dart';

/// The `RepairRolloutRule` automation rule will automatically repair a failed `Rollout`.
class RepairRolloutRule {
  /// ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final String id;

  /// Optional. Jobs to repair. Proceeds only after job name matched any one in the list, or for all jobs if unspecified or empty. The phase that includes the job must match the phase ID specified in `source_phase`. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final List<String>? jobs;

  /// Defines the types of automatic repair actions for failed jobs.
  final List<RepairMode> repairModes;

  /// Optional. Phases within which jobs are subject to automatic repair actions on failure. Proceeds only after phase name matched any one in the list, or for all phases if unspecified. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final List<String>? sourcePhases;

  RepairRolloutRule({
    required this.id,
    this.jobs,
    required this.repairModes,
    this.sourcePhases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final jobsValue = jobs;
    if (jobsValue != null) {
      map['jobs'] = jobsValue;
    }
    map['repairModes'] =
        pulumi.Input.encodeList<RepairMode, Map<String, dynamic>>(
            repairModes, (value) => value.toMap());
    final sourcePhasesValue = sourcePhases;
    if (sourcePhasesValue != null) {
      map['sourcePhases'] = sourcePhasesValue;
    }
    return map;
  }

  factory RepairRolloutRule.fromMap(Map<String, dynamic> map) {
    return RepairRolloutRule(
      id: map['id'] as String,
      jobs: map['jobs'] == null ? null : (map['jobs'] as List).cast<String>(),
      repairModes: pulumi.Input.decodeList<RepairMode>(
          map['repairModes'],
          (value) =>
              RepairMode.fromMap((value as Map).cast<String, dynamic>())),
      sourcePhases: map['sourcePhases'] == null
          ? null
          : (map['sourcePhases'] as List).cast<String>(),
    );
  }
}
