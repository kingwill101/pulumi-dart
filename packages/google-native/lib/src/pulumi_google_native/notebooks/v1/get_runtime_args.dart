// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRuntime.
class GetRuntimeArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> runtimeId;

  GetRuntimeArgs({
    required this.location,
    this.project,
    required this.runtimeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runtimeId'] = runtimeId;
    return map;
  }

  factory GetRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      runtimeId: Input.asInput<String>(map['runtimeId']),
    );
  }
}
