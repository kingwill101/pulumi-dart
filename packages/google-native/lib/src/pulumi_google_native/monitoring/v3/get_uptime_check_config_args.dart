// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUptimeCheckConfig.
class GetUptimeCheckConfigArgs {
  final Input<String>? project;
  final Input<String> uptimeCheckConfigId;

  GetUptimeCheckConfigArgs({
    this.project,
    required this.uptimeCheckConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['uptimeCheckConfigId'] = uptimeCheckConfigId;
    return map;
  }

  factory GetUptimeCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetUptimeCheckConfigArgs(
      project: Input.asOptionalInput<String>(map['project']),
      uptimeCheckConfigId: Input.asInput<String>(map['uptimeCheckConfigId']),
    );
  }
}
