// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRouterNat.
class GetRouterNatArgs {
  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  final Input<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region where the router and NAT reside.
  final Input<String>? region;

  /// The name of the Cloud Router in which this NAT will be configured.
  ///
  /// - - -
  final Input<String> router;

  GetRouterNatArgs({
    required this.name,
    this.project,
    this.region,
    required this.router,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['router'] = router;
    return map;
  }

  factory GetRouterNatArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterNatArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      router: Input.asInput<String>(map['router']),
    );
  }
}
