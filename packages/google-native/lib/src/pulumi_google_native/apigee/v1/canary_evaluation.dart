import 'package:pulumi/pulumi.dart' hide Config;
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
    this.control = registerOutput<String>('control');
    this.createTime = registerOutput<String>('createTime');
    this.endTime = registerOutput<String>('endTime');
    this.instanceId = registerOutput<String>('instanceId');
    this.metricLabels =
        registerOutput<GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse>(
            'metricLabels');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.treatment = registerOutput<String>('treatment');
    this.verdict = registerOutput<String>('verdict');
  }
}
