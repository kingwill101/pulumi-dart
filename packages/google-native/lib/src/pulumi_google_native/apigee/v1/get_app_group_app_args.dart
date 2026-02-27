// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppGroupApp.
class GetAppGroupAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> appgroupId;
  final pulumi.Input<String> organizationId;

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
      appId: pulumi.Input.asInput<String>(map['appId']),
      appgroupId: pulumi.Input.asInput<String>(map['appgroupId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
