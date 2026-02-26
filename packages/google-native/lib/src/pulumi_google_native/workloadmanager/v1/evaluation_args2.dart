// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_filter2.dart';

/// The set of arguments for Evaluation.
class EvaluationArgs2 {
  /// The Cloud Storage bucket name for custom rules.
  final Input<String>? customRulesBucket;

  /// Description of the Evaluation
  final Input<String>? description;

  /// Required. Id of the requesting object
  final Input<String> evaluationId;

  /// Labels as key value pairs
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// annotations as key value pairs
  final Input<ResourceFilter2>? resourceFilter;

  /// the name of the rule
  final Input<List<String>>? ruleNames;

  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  final Input<String>? schedule;

  EvaluationArgs2({
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
      map['resourceFilter'] =
          Input.mapOptionalInputValue<ResourceFilter2, Map<String, dynamic>>(
              resourceFilterValue, (value) => value.toMap());
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

  factory EvaluationArgs2.fromMap(Map<String, dynamic> map) {
    return EvaluationArgs2(
      customRulesBucket:
          Input.asOptionalInput<String>(map['customRulesBucket']),
      description: Input.asOptionalInput<String>(map['description']),
      evaluationId: Input.asInput<String>(map['evaluationId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      resourceFilter:
          Input.asOptionalInput<ResourceFilter2>(map['resourceFilter']),
      ruleNames: Input.asOptionalInput<List<String>>(map['ruleNames']),
      schedule: Input.asOptionalInput<String>(map['schedule']),
    );
  }
}
