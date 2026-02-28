// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_gateway_security_policy_args_doc}
/// The set of arguments for GatewaySecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_gateway_security_policy_args_doc}
class GatewaySecurityPolicyArgs {
  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Required. Short name of the GatewaySecurityPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "gateway_security_policy1".
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String>? location;

  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  final pulumi.Input<String>? tlsInspectionPolicy;

  /// Creates a new [GatewaySecurityPolicyArgs].
  /// [description] Optional. Free-text description of the resource.
  /// [gatewaySecurityPolicyId] Required. Short name of the GatewaySecurityPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "gateway_security_policy1".
  /// [location] Optional.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [project] Optional.
  /// [tlsInspectionPolicy] Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  GatewaySecurityPolicyArgs({
    String? description,
    required String gatewaySecurityPolicyId,
    String? location,
    String? name,
    String? project,
    String? tlsInspectionPolicy,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        gatewaySecurityPolicyId =
            pulumi.Input.asInput<String>(gatewaySecurityPolicyId),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        tlsInspectionPolicy =
            pulumi.Input.asOptionalInput<String>(tlsInspectionPolicy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['gatewaySecurityPolicyId'] = gatewaySecurityPolicyId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tlsInspectionPolicyValue = tlsInspectionPolicy;
    if (tlsInspectionPolicyValue != null) {
      map['tlsInspectionPolicy'] = tlsInspectionPolicyValue;
    }
    return map;
  }

  factory GatewaySecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GatewaySecurityPolicyArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      gatewaySecurityPolicyId: map['gatewaySecurityPolicyId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tlsInspectionPolicy: map['tlsInspectionPolicy'] == null
          ? null
          : map['tlsInspectionPolicy'] as String,
    );
  }
}
