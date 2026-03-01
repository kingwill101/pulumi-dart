import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_autoscaler_args.dart';
import 'kubernetes_autoscaler_nodepool.dart';
import 'kubernetes_autoscaler_state.dart';

class KubernetesAutoscaler extends pulumi.CustomResource {
  /// The id of kubernetes cluster.
  late final pulumi.Output<String> clusterId;
  /// The cool_down_duration option of cluster-autoscaler.
  late final pulumi.Output<String> coolDownDuration;
  /// The defer_scale_in_duration option of cluster-autoscaler.
  late final pulumi.Output<String> deferScaleInDuration;
  /// The list of the node pools. See `nodepools` below.
  late final pulumi.Output<List<KubernetesAutoscalerNodepool>?> nodepools;
  /// Enable autoscaler access to alibabacloud service by ecs ramrole token. default: false
  late final pulumi.Output<bool?> useEcsRamRoleToken;
  /// The utilization option of cluster-autoscaler.
  late final pulumi.Output<String> utilization;

  /// Creates a new [KubernetesAutoscaler].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesAutoscaler]. {@macro pulumi_cs_kubernetes_autoscaler_kubernetes_autoscaler_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesAutoscaler(
    String name, {
    KubernetesAutoscalerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/kubernetesAutoscaler:KubernetesAutoscaler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.coolDownDuration = registerOutput<String>('coolDownDuration');
    this.deferScaleInDuration = registerOutput<String>('deferScaleInDuration');
    this.nodepools = registerOutput<List<KubernetesAutoscalerNodepool>?>('nodepools');
    this.useEcsRamRoleToken = registerOutput<bool?>('useEcsRamRoleToken');
    this.utilization = registerOutput<String>('utilization');
  }

  /// Gets an existing [KubernetesAutoscaler] resource's state with the given [name] and [id].
  static KubernetesAutoscaler get(
    String name,
    pulumi.Input<String> id, {
    KubernetesAutoscalerState? state,
  }) {
    return KubernetesAutoscaler._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KubernetesAutoscaler._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/kubernetesAutoscaler:KubernetesAutoscaler',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.coolDownDuration = registerOutput<String>('coolDownDuration');
    this.deferScaleInDuration = registerOutput<String>('deferScaleInDuration');
    this.nodepools = registerOutput<List<KubernetesAutoscalerNodepool>?>('nodepools');
    this.useEcsRamRoleToken = registerOutput<bool?>('useEcsRamRoleToken');
    this.utilization = registerOutput<String>('utilization');
  }
}
