import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_security_policy_networksecurity_v1beta1_args.dart';

/// Creates a new GatewaySecurityPolicy in a given project and location.
class GatewaySecurityPolicyNetworksecurityV1beta1 extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Free-text description of the resource.
  late final pulumi.Output<String> description;
  /// Required. Short name of the GatewaySecurityPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "gateway_security_policy1".
  late final pulumi.Output<String> gatewaySecurityPolicyId;
  late final pulumi.Output<String> location;
  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  late final pulumi.Output<String> tlsInspectionPolicy;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GatewaySecurityPolicyNetworksecurityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewaySecurityPolicyNetworksecurityV1beta1]. {@macro pulumi_networksecurity_v1beta1_gateway_security_policy_networksecurity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewaySecurityPolicyNetworksecurityV1beta1(
    String name, {
    GatewaySecurityPolicyNetworksecurityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:GatewaySecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.gatewaySecurityPolicyId = registerOutput<String>('gatewaySecurityPolicyId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tlsInspectionPolicy = registerOutput<String>('tlsInspectionPolicy');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
