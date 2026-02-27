// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubnetworks.
class GetSubnetworksArgs {
  /// A string filter as defined in the [REST API](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/list#query-parameters).
  final pulumi.Input<String>? filter;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region this subnetwork has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String>? region;

  GetSubnetworksArgs({
    this.filter,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetSubnetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetworksArgs(
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
