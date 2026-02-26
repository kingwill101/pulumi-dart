// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLbTrafficExtension.
class GetLbTrafficExtensionArgs {
  final Input<String> lbTrafficExtensionId;
  final Input<String> location;
  final Input<String>? project;

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
      lbTrafficExtensionId: Input.asInput<String>(map['lbTrafficExtensionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
