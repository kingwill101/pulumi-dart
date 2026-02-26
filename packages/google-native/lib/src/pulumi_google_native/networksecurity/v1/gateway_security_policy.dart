import 'package:pulumi/pulumi.dart';
import 'gateway_security_policy_args.dart';

/// Creates a new GatewaySecurityPolicy in a given project and location.
class GatewaySecurityPolicy extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final Output<String> description;

  /// Required. Short name of the GatewaySecurityPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "gateway_security_policy1".
  late final Output<String> gatewaySecurityPolicyId;
  late final Output<String> location;

  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  late final Output<String> tlsInspectionPolicy;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  GatewaySecurityPolicy(
    String name, {
    GatewaySecurityPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1:GatewaySecurityPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.gatewaySecurityPolicyId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.tlsInspectionPolicy = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
