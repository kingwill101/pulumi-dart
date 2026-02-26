// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHub.
class GetHubArgs {
  final Input<String> hubId;
  final Input<String>? project;

  GetHubArgs({
    required this.hubId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hubId'] = hubId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHubArgs.fromMap(Map<String, dynamic> map) {
    return GetHubArgs(
      hubId: Input.asInput<String>(map['hubId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
