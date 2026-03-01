import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_disruption_budget_policy_v1beta1_args.dart';
import 'pod_disruption_budget_spec_policy_v1beta1.dart';
import 'pod_disruption_budget_status_policy_v1beta1.dart';

/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class PodDisruptionBudgetResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;
  /// Specification of the desired behavior of the PodDisruptionBudget.
  late final pulumi.Output<PodDisruptionBudgetSpecPolicyV1beta1> spec;
  /// Most recently observed status of the PodDisruptionBudget.
  late final pulumi.Output<PodDisruptionBudgetStatusPolicyV1beta1?> status;

  /// Creates a new [PodDisruptionBudgetResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodDisruptionBudgetResource]. {@macro pulumi_policy_v1beta1_pod_disruption_budget_policy_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodDisruptionBudgetResource(
    String name, {
    PodDisruptionBudgetPolicyV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:policy/v1beta1:PodDisruptionBudget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<PodDisruptionBudgetSpecPolicyV1beta1>('spec');
    this.status = registerOutput<PodDisruptionBudgetStatusPolicyV1beta1?>('status');
  }
}
