import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_workloadmanager_v1_args.dart';
import 'resource_filter_response_workloadmanager_v1.dart';
import 'resource_status_response_workloadmanager_v1.dart';

/// Creates a new Evaluation in a given project and location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class EvaluationWorkloadmanagerV1 extends pulumi.CustomResource {
  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;

  /// The Cloud Storage bucket name for custom rules.
  late final pulumi.Output<String> customRulesBucket;

  /// Description of the Evaluation
  late final pulumi.Output<String> description;

  /// Required. Id of the requesting object
  late final pulumi.Output<String> evaluationId;

  /// Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// annotations as key value pairs
  late final pulumi.Output<ResourceFilterResponseWorkloadmanagerV1>
      resourceFilter;

  /// [Output only] The updated rule ids if exist.
  late final pulumi.Output<ResourceStatusResponseWorkloadmanagerV1>
      resourceStatus;

  /// the name of the rule
  late final pulumi.Output<List<String>> ruleNames;

  /// [Output only] The updated rule ids if exist.
  late final pulumi.Output<List<String>> ruleVersions;

  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  late final pulumi.Output<String> schedule;

  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;

  EvaluationWorkloadmanagerV1(
    String name, {
    EvaluationWorkloadmanagerV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:workloadmanager/v1:Evaluation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.customRulesBucket = registerOutput<String>('customRulesBucket');
    this.description = registerOutput<String>('description');
    this.evaluationId = registerOutput<String>('evaluationId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.resourceFilter =
        registerOutput<ResourceFilterResponseWorkloadmanagerV1>(
            'resourceFilter');
    this.resourceStatus =
        registerOutput<ResourceStatusResponseWorkloadmanagerV1>(
            'resourceStatus');
    this.ruleNames = registerOutput<List<String>>('ruleNames');
    this.ruleVersions = registerOutput<List<String>>('ruleVersions');
    this.schedule = registerOutput<String>('schedule');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
