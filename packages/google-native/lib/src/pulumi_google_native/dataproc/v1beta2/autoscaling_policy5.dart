import 'package:pulumi/pulumi.dart';
import 'autoscaling_policy_args2.dart';
import 'basic_autoscaling_algorithm_response2.dart';
import 'instance_group_autoscaling_policy_config_response2.dart';

/// Creates new autoscaling policy.
/// Auto-naming is currently not supported for this resource.
class AutoscalingPolicy5 extends CustomResource {
  late final Output<BasicAutoscalingAlgorithmResponse2> basicAlgorithm;
  late final Output<String> location;

  /// The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. Describes how the autoscaler will operate for secondary workers.
  late final Output<InstanceGroupAutoscalingPolicyConfigResponse2>
      secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  late final Output<InstanceGroupAutoscalingPolicyConfigResponse2> workerConfig;

  AutoscalingPolicy5(
    String name, {
    AutoscalingPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1beta2:AutoscalingPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.basicAlgorithm =
        Output.createUnknown<BasicAutoscalingAlgorithmResponse2>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.secondaryWorkerConfig =
        Output.createUnknown<InstanceGroupAutoscalingPolicyConfigResponse2>();
    this.workerConfig =
        Output.createUnknown<InstanceGroupAutoscalingPolicyConfigResponse2>();
  }
}
