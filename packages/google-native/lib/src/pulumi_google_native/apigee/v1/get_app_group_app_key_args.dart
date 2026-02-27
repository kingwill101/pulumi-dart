// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAppGroupAppKey.
class GetAppGroupAppKeyArgs {
  final Input<String> appId;
  final Input<String> appgroupId;
  final Input<String> keyId;
  final Input<String> organizationId;

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
      appId: Input.asInput<String>(map['appId']),
      appgroupId: Input.asInput<String>(map['appgroupId']),
      keyId: Input.asInput<String>(map['keyId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
