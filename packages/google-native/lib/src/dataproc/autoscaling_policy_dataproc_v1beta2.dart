import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_dataproc_v1beta2_args.dart';
import 'basic_autoscaling_algorithm_response_dataproc_v1beta2.dart';
import 'instance_group_autoscaling_policy_config_response_dataproc_v1beta2.dart';

/// Creates new autoscaling policy.
/// Auto-naming is currently not supported for this resource.
class AutoscalingPolicyDataprocV1beta2 extends pulumi.CustomResource {
  late final pulumi.Output<BasicAutoscalingAlgorithmResponseDataprocV1beta2>
  basicAlgorithm;
  late final pulumi.Output<String> location;

  /// The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. Describes how the autoscaler will operate for secondary workers.
  late final pulumi.Output<
    InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2
  >
  secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  late final pulumi.Output<
    InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2
  >
  workerConfig;

  /// Creates a new [AutoscalingPolicyDataprocV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoscalingPolicyDataprocV1beta2]. {@macro pulumi_dataproc_v1beta2_autoscaling_policy_dataproc_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoscalingPolicyDataprocV1beta2(
    String name, {
    AutoscalingPolicyDataprocV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataproc/v1beta2:AutoscalingPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.basicAlgorithm =
        registerOutput<BasicAutoscalingAlgorithmResponseDataprocV1beta2>(
          'basicAlgorithm',
        );
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.secondaryWorkerConfig =
        registerOutput<
          InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2
        >('secondaryWorkerConfig');
    this.workerConfig =
        registerOutput<
          InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2
        >('workerConfig');
  }
}
