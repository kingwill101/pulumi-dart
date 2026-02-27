// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionNetworkEndpointGroup.
class GetRegionNetworkEndpointGroupArgs {
  /// The Network Endpoint Group name. Provide either this or a `self_link`.
  final pulumi.Input<String>? name;

  /// The ID of the project to list versions in. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region where the Serverless REGs Reside. Provide either this or a `self_link`.
  final pulumi.Input<String>? region;

  /// The Network Endpoint Group self_link.
  final pulumi.Input<String>? selfLink;

  GetRegionNetworkEndpointGroupArgs({
    this.name,
    this.project,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    return map;
  }

  factory GetRegionNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
    );
  }
}
