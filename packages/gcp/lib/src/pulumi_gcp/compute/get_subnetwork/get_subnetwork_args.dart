// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubnetwork.
class GetSubnetworkArgs {
  /// The name of the subnetwork. One of `name` or `self_link`
  /// must be specified.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region this subnetwork has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String>? region;

  /// The self link of the subnetwork. If `self_link` is
  /// specified, `name`, `project`, and `region` are ignored.
  final pulumi.Input<String>? selfLink;

  GetSubnetworkArgs({
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

  factory GetSubnetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
    );
  }
}
