// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_filter_workloadmanager_v1.dart';

/// The set of arguments for Evaluation.
class EvaluationWorkloadmanagerV1Args {
  /// The Cloud Storage bucket name for custom rules.
  final pulumi.Input<String>? customRulesBucket;

  /// Description of the Evaluation
  final pulumi.Input<String>? description;

  /// Required. Id of the requesting object
  final pulumi.Input<String> evaluationId;

  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// annotations as key value pairs
  final pulumi.Input<ResourceFilterWorkloadmanagerV1>? resourceFilter;

  /// the name of the rule
  final pulumi.Input<List<String>>? ruleNames;

  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  final pulumi.Input<String>? schedule;

  EvaluationWorkloadmanagerV1Args({
    this.customRulesBucket,
    this.description,
    required this.evaluationId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.resourceFilter,
    this.ruleNames,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRulesBucketValue = customRulesBucket;
    if (customRulesBucketValue != null) {
      map['customRulesBucket'] = customRulesBucketValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['evaluationId'] = evaluationId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final resourceFilterValue = resourceFilter;
    if (resourceFilterValue != null) {
      map['resourceFilter'] = pulumi.Input.mapOptionalInputValue<
          ResourceFilterWorkloadmanagerV1,
          Map<String, dynamic>>(resourceFilterValue, (value) => value.toMap());
    }
    final ruleNamesValue = ruleNames;
    if (ruleNamesValue != null) {
      map['ruleNames'] = ruleNamesValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    return map;
  }

  factory EvaluationWorkloadmanagerV1Args.fromMap(Map<String, dynamic> map) {
    return EvaluationWorkloadmanagerV1Args(
      customRulesBucket:
          pulumi.Input.asOptionalInput<String>(map['customRulesBucket']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      evaluationId: pulumi.Input.asInput<String>(map['evaluationId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      resourceFilter:
          pulumi.Input.asOptionalInput<ResourceFilterWorkloadmanagerV1>(
              map['resourceFilter']),
      ruleNames: pulumi.Input.asOptionalInput<List<String>>(map['ruleNames']),
      schedule: pulumi.Input.asOptionalInput<String>(map['schedule']),
    );
  }
}
