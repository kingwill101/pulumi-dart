import 'package:pulumi/pulumi.dart';
import 'evaluation_args2.dart';
import 'resource_filter_response2.dart';
import 'resource_status_response5.dart';

/// Creates a new Evaluation in a given project and location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Evaluation2 extends CustomResource {
  /// [Output only] Create time stamp
  late final Output<String> createTime;

  /// The Cloud Storage bucket name for custom rules.
  late final Output<String> customRulesBucket;

  /// Description of the Evaluation
  late final Output<String> description;

  /// Required. Id of the requesting object
  late final Output<String> evaluationId;

  /// Labels as key value pairs
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}'
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// annotations as key value pairs
  late final Output<ResourceFilterResponse2> resourceFilter;

  /// [Output only] The updated rule ids if exist.
  late final Output<ResourceStatusResponse5> resourceStatus;

  /// the name of the rule
  late final Output<List<String>> ruleNames;

  /// [Output only] The updated rule ids if exist.
  late final Output<List<String>> ruleVersions;

  /// crontab format schedule for scheduled evaluation, currently only support the following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *", "0 0 */7 * *",
  late final Output<String> schedule;

  /// [Output only] Update time stamp
  late final Output<String> updateTime;

  Evaluation2(
    String name, {
    EvaluationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:workloadmanager/v1:Evaluation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.customRulesBucket = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.evaluationId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.resourceFilter = Output.createUnknown<ResourceFilterResponse2>();
    this.resourceStatus = Output.createUnknown<ResourceStatusResponse5>();
    this.ruleNames = Output.createUnknown<List<String>>();
    this.ruleVersions = Output.createUnknown<List<String>>();
    this.schedule = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
