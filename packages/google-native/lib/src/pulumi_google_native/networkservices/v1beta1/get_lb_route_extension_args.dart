// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLbRouteExtension.
class GetLbRouteExtensionArgs {
  final pulumi.Input<String> lbRouteExtensionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetLbRouteExtensionArgs({
    required this.lbRouteExtensionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lbRouteExtensionId'] = lbRouteExtensionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLbRouteExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetLbRouteExtensionArgs(
      lbRouteExtensionId:
          pulumi.Input.asInput<String>(map['lbRouteExtensionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
