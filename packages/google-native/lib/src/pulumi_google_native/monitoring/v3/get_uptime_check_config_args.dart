// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUptimeCheckConfig.
class GetUptimeCheckConfigArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> uptimeCheckConfigId;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      uptimeCheckConfigId:
          pulumi.Input.asInput<String>(map['uptimeCheckConfigId']),
    );
  }
}
