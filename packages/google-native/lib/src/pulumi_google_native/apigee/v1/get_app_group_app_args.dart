// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppGroupApp.
class GetAppGroupAppArgs {
  final Input<String> appId;
  final Input<String> appgroupId;
  final Input<String> organizationId;

  GetAppGroupAppArgs({
    required this.appId,
    required this.appgroupId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['appgroupId'] = appgroupId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetAppGroupAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGroupAppArgs(
      appId: Input.asInput<String>(map['appId']),
      appgroupId: Input.asInput<String>(map['appgroupId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
