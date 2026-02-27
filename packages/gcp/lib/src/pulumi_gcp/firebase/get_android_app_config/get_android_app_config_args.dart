// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAndroidAppConfig.
class GetAndroidAppConfigArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? project;

  GetAndroidAppConfigArgs({
    required this.appId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAndroidAppConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppConfigArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
