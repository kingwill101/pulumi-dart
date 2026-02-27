// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getShare.
class GetShareArgs {
  final Input<String> instanceId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> shareId;

  GetShareArgs({
    required this.instanceId,
    required this.location,
    this.project,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['shareId'] = shareId;
    return map;
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      shareId: Input.asInput<String>(map['shareId']),
    );
  }
}
