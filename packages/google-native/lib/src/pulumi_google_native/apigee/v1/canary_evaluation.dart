import 'package:pulumi/pulumi.dart';
import 'canary_evaluation_args.dart';
import 'google_cloud_apigee_v1_canary_evaluation_metric_labels_response.dart';

/// Creates a new canary evaluation for an organization.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CanaryEvaluation extends CustomResource {
  /// The stable version that is serving requests.
  late final Output<String> control;

  /// Create time of the canary evaluation.
  late final Output<String> createTime;

  /// End time for the evaluation's analysis.
  late final Output<String> endTime;
  late final Output<String> instanceId;

  /// Labels used to filter the metrics used for a canary evaluation.
  late final Output<GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse>
      metricLabels;

  /// Name of the canary evalution.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Start time for the canary evaluation's analysis.
  late final Output<String> startTime;

  /// The current state of the canary evaluation.
  late final Output<String> state;

  /// The newer version that is serving requests.
  late final Output<String> treatment;

  /// The resulting verdict of the canary evaluations: NONE, PASS, or FAIL.
  late final Output<String> verdict;

  CanaryEvaluation(
    String name, {
    CanaryEvaluationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:CanaryEvaluation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.control = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.metricLabels = Output.createUnknown<
        GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.treatment = Output.createUnknown<String>();
    this.verdict = Output.createUnknown<String>();
  }
}
