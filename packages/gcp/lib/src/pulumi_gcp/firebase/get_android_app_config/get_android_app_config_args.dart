// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAndroidAppConfig.
class GetAndroidAppConfigArgs {
  final Input<String> appId;
  final Input<String>? project;

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
      appId: Input.asInput<String>(map['appId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
