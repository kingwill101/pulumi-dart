// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkEdgeSecurityService.
class NetworkEdgeSecurityServiceArgs {
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the gateway security policy.
  final pulumi.Input<String>? region;

  /// The resource URL for the network edge security service associated with this network edge security service.
  final pulumi.Input<String>? securityPolicy;

  NetworkEdgeSecurityServiceArgs({
    this.description,
    this.name,
    this.project,
    this.region,
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    return map;
  }

  factory NetworkEdgeSecurityServiceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEdgeSecurityServiceArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityPolicy:
          pulumi.Input.asOptionalInput<String>(map['securityPolicy']),
    );
  }
}
