// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeveloperAppKey.
class GetDeveloperAppKeyArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> organizationId;

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
      appId: pulumi.Input.asInput<String>(map['appId']),
      developerId: pulumi.Input.asInput<String>(map['developerId']),
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
