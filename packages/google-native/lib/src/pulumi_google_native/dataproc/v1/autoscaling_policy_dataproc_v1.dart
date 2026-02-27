import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_args.dart';
import 'basic_autoscaling_algorithm_response.dart';
import 'instance_group_autoscaling_policy_config_response.dart';

/// Creates new autoscaling policy.
/// Auto-naming is currently not supported for this resource.
class AutoscalingPolicyDataprocV1 extends pulumi.CustomResource {
  late final pulumi.Output<BasicAutoscalingAlgorithmResponse> basicAlgorithm;

  /// Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. Describes how the autoscaler will operate for secondary workers.
  late final pulumi.Output<InstanceGroupAutoscalingPolicyConfigResponse>
      secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  late final pulumi.Output<InstanceGroupAutoscalingPolicyConfigResponse>
      workerConfig;

  AutoscalingPolicyDataprocV1(
    String name, {
    AutoscalingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:AutoscalingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.basicAlgorithm =
        registerOutput<BasicAutoscalingAlgorithmResponse>('basicAlgorithm');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.secondaryWorkerConfig =
        registerOutput<InstanceGroupAutoscalingPolicyConfigResponse>(
            'secondaryWorkerConfig');
    this.workerConfig =
        registerOutput<InstanceGroupAutoscalingPolicyConfigResponse>(
            'workerConfig');
  }
}
