import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_security_policy_args.dart';
import 'pod_security_policy_spec.dart';

/// PodSecurityPolicy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.
class PodSecurityPolicyPolicyV1beta1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec defines the policy enforced.
  late final pulumi.Output<PodSecurityPolicySpec> spec;

  /// Creates a new [PodSecurityPolicyPolicyV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodSecurityPolicyPolicyV1beta1]. {@macro pulumi_policy_v1beta1_pod_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodSecurityPolicyPolicyV1beta1(
    String name, {
    PodSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:policy/v1beta1:PodSecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<PodSecurityPolicySpec>('spec');
  }
}
