// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceConfig.
class GetInstanceConfigArgs {
  final Input<String> instanceConfigId;
  final Input<String>? project;

  GetInstanceConfigArgs({
    required this.instanceConfigId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceConfigId'] = instanceConfigId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceConfigArgs(
      instanceConfigId: Input.asInput<String>(map['instanceConfigId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
