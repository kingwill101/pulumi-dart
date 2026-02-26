// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GatewaySecurityPolicy.
class GatewaySecurityPolicyArgs {
  /// Optional. Free-text description of the resource.
  final Input<String>? description;

  /// Required. Short name of the GatewaySecurityPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "gateway_security_policy1".
  final Input<String> gatewaySecurityPolicyId;
  final Input<String>? location;

  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  final Input<String>? tlsInspectionPolicy;

  GatewaySecurityPolicyArgs({
    this.description,
    required this.gatewaySecurityPolicyId,
    this.location,
    this.name,
    this.project,
    this.tlsInspectionPolicy,
  });

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
      description: Input.asOptionalInput<String>(map['description']),
      gatewaySecurityPolicyId:
          Input.asInput<String>(map['gatewaySecurityPolicyId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      tlsInspectionPolicy:
          Input.asOptionalInput<String>(map['tlsInspectionPolicy']),
    );
  }
}
