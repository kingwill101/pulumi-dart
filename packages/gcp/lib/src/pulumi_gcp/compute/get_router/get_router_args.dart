// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRouter.
class GetRouterArgs {
  /// The name of the router.
  final pulumi.Input<String> name;

  /// The VPC network on which this router lives.
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource
  /// belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region this router has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String>? region;

  GetRouterArgs({
    required this.name,
    required this.network,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['network'] = network;
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

  factory GetRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
