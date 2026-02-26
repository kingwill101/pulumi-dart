// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDeveloperAppKey.
class GetDeveloperAppKeyArgs {
  final Input<String> appId;
  final Input<String> developerId;
  final Input<String> keyId;
  final Input<String> organizationId;

  GetDeveloperAppKeyArgs({
    required this.appId,
    required this.developerId,
    required this.keyId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['developerId'] = developerId;
    map['keyId'] = keyId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetDeveloperAppKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetDeveloperAppKeyArgs(
      appId: Input.asInput<String>(map['appId']),
      developerId: Input.asInput<String>(map['developerId']),
      keyId: Input.asInput<String>(map['keyId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
