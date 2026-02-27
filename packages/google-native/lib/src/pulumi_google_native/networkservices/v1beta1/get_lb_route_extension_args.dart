// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getLbRouteExtension.
class GetLbRouteExtensionArgs {
  final Input<String> lbRouteExtensionId;
  final Input<String> location;
  final Input<String>? project;

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
      lbRouteExtensionId: Input.asInput<String>(map['lbRouteExtensionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
