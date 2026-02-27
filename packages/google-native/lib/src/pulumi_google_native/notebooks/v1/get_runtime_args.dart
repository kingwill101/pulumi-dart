// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRuntime.
class GetRuntimeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runtimeId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runtimeId: pulumi.Input.asInput<String>(map['runtimeId']),
    );
  }
}
