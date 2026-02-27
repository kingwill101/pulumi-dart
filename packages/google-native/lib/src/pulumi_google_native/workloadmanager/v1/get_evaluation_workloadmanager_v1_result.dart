// ignore_for_file: unused_element, unnecessary_cast

import 'resource_filter_response_workloadmanager_v1.dart';
import 'resource_status_response_workloadmanager_v1.dart';

/// Result data returned by getEvaluation.
class GetEvaluationWorkloadmanagerV1Result {
  /// [Output only] Create time stamp
  final String createTime;

  /// The Cloud Storage bucket name for custom rules.
  final String customRulesBucket;

  /// Description of the Evaluation
  final String description;

  /// Labels as key value pairs
  final Map<String, String> labels;

  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  final String name;

  /// annotations as key value pairs
  final ResourceFilterResponseWorkloadmanagerV1 resourceFilter;

  /// [Output only] The updated rule ids if exist.
  final ResourceStatusResponseWorkloadmanagerV1 resourceStatus;

  /// the name of the rule
  final List<String> ruleNames;

  /// [Output only] The updated rule ids if exist.
  final List<String> ruleVersions;

  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  final String schedule;

  /// [Output only] Update time stamp
  final String updateTime;

  GetEvaluationWorkloadmanagerV1Result({
    required this.createTime,
    required this.customRulesBucket,
    required this.description,
    required this.labels,
    required this.name,
    required this.resourceFilter,
    required this.resourceStatus,
    required this.ruleNames,
    required this.ruleVersions,
    required this.schedule,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['customRulesBucket'] = customRulesBucket;
    map['description'] = description;
    map['labels'] = labels;
    map['name'] = name;
    map['resourceFilter'] = resourceFilter.toMap();
    map['resourceStatus'] = resourceStatus.toMap();
    map['ruleNames'] = ruleNames;
    map['ruleVersions'] = ruleVersions;
    map['schedule'] = schedule;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetEvaluationWorkloadmanagerV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetEvaluationWorkloadmanagerV1Result(
      createTime: map['createTime'] as String,
      customRulesBucket: map['customRulesBucket'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      resourceFilter: ResourceFilterResponseWorkloadmanagerV1.fromMap(
          (map['resourceFilter'] as Map).cast<String, dynamic>()),
      resourceStatus: ResourceStatusResponseWorkloadmanagerV1.fromMap(
          (map['resourceStatus'] as Map).cast<String, dynamic>()),
      ruleNames: (map['ruleNames'] as List).cast<String>(),
      ruleVersions: (map['ruleVersions'] as List).cast<String>(),
      schedule: map['schedule'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
