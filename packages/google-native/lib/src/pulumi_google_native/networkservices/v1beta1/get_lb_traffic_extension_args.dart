// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLbTrafficExtension.
class GetLbTrafficExtensionArgs {
  final pulumi.Input<String> lbTrafficExtensionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetLbTrafficExtensionArgs({
    required this.lbTrafficExtensionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lbTrafficExtensionId'] = lbTrafficExtensionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLbTrafficExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetLbTrafficExtensionArgs(
      lbTrafficExtensionId:
          pulumi.Input.asInput<String>(map['lbTrafficExtensionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
