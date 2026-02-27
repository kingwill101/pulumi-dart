// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppGroupAppKey.
class GetAppGroupAppKeyArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> appgroupId;
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> organizationId;

  GetAppGroupAppKeyArgs({
    required this.appId,
    required this.appgroupId,
    required this.keyId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['appgroupId'] = appgroupId;
    map['keyId'] = keyId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetAppGroupAppKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGroupAppKeyArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      appgroupId: pulumi.Input.asInput<String>(map['appgroupId']),
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
