// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkEdgeSecurityService.
class NetworkEdgeSecurityServiceArgs {
  /// Free-text description of the resource.
  final Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the gateway security policy.
  final Input<String>? region;

  /// The resource URL for the network edge security service associated with this network edge security service.
  final Input<String>? securityPolicy;

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
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      securityPolicy: Input.asOptionalInput<String>(map['securityPolicy']),
    );
  }
}
