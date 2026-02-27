// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GatewaySecurityPolicy.
class GatewaySecurityPolicyArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// The location of the gateway security policy.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
  /// gatewaySecurityPolicy should match the pattern:(^a-z?$).
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  final pulumi.Input<String>? tlsInspectionPolicy;

  GatewaySecurityPolicyArgs({
    this.description,
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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tlsInspectionPolicy:
          pulumi.Input.asOptionalInput<String>(map['tlsInspectionPolicy']),
    );
  }
}
