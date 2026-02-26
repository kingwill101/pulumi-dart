// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for routerStatus.
class RouterStatusArgs {
  /// The name of the router.
  final Input<String> name;

  /// The ID of the project in which the resource
  /// belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region this router has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final Input<String>? region;

  RouterStatusArgs({
    required this.name,
    this.project,
    this.region,
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
    return map;
  }

  factory RouterStatusArgs.fromMap(Map<String, dynamic> map) {
    return RouterStatusArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
