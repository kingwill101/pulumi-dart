// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_filter.dart';

/// {@template pulumi_workloadmanager_v1_evaluation_args_doc}
/// The set of arguments for Evaluation.
/// {@endtemplate}
/// {@macro pulumi_workloadmanager_v1_evaluation_args_doc}
class EvaluationArgs {
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
  final pulumi.Input<ResourceFilter>? resourceFilter;

  /// the name of the rule
  final pulumi.Input<List<String>>? ruleNames;

  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  final pulumi.Input<String>? schedule;

  /// Creates a new [EvaluationArgs].
  /// [customRulesBucket] The Cloud Storage bucket name for custom rules.
  /// [description] Description of the Evaluation
  /// [evaluationId] Required. Id of the requesting object
  /// [labels] Labels as key value pairs
  /// [location] Optional.
  /// [name] name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [resourceFilter] annotations as key value pairs
  /// [ruleNames] the name of the rule
  /// [schedule] crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  EvaluationArgs({
    String? customRulesBucket,
    String? description,
    required String evaluationId,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? requestId,
    ResourceFilter? resourceFilter,
    List<String>? ruleNames,
    String? schedule,
  }) : customRulesBucket = pulumi.Input.asOptionalInput<String>(
         customRulesBucket,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       evaluationId = pulumi.Input.asInput<String>(evaluationId),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       resourceFilter = pulumi.Input.asOptionalInput<ResourceFilter>(
         resourceFilter,
       ),
       ruleNames = pulumi.Input.asOptionalInput<List<String>>(ruleNames),
       schedule = pulumi.Input.asOptionalInput<String>(schedule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRulesBucket': ?customRulesBucket,
      'description': ?description,
      'evaluationId': evaluationId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'resourceFilter':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceFilter,
            Map<String, dynamic>
          >(resourceFilter, (value) => value.toMap()),
      'ruleNames': ?ruleNames,
      'schedule': ?schedule,
    };
  }

  factory EvaluationArgs.fromMap(Map<String, dynamic> map) {
    return EvaluationArgs(
      customRulesBucket: map['customRulesBucket'] == null
          ? null
          : map['customRulesBucket'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      evaluationId: map['evaluationId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      resourceFilter: map['resourceFilter'] == null
          ? null
          : ResourceFilter.fromMap(
              (map['resourceFilter'] as Map).cast<String, dynamic>(),
            ),
      ruleNames: map['ruleNames'] == null
          ? null
          : (map['ruleNames'] as List).cast<String>(),
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
    );
  }
}
