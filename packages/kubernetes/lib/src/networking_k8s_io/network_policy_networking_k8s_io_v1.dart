import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'network_policy_args.dart';
import 'network_policy_spec.dart';
import 'network_policy_status.dart';

/// NetworkPolicy describes what network traffic is allowed for a set of Pods
class NetworkPolicyNetworkingK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec represents the specification of the desired behavior for this NetworkPolicy.
  late final pulumi.Output<NetworkPolicySpec> spec;
  /// Status is the current state of the NetworkPolicy. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<NetworkPolicyStatus?> status;

  /// Creates a new [NetworkPolicyNetworkingK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPolicyNetworkingK8sIoV1]. {@macro pulumi_networking_k8s_io_v1_network_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPolicyNetworkingK8sIoV1(
    String name, {
    NetworkPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:networking.k8s.io/v1:NetworkPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<NetworkPolicySpec>('spec');
    this.status = registerOutput<NetworkPolicyStatus?>('status');
  }
}
