// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_developer_app_key_args_doc}
/// Arguments for getDeveloperAppKey.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_developer_app_key_args_doc}
class GetDeveloperAppKeyArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetDeveloperAppKeyArgs].
  /// [appId] Required.
  /// [developerId] Required.
  /// [keyId] Required.
  /// [organizationId] Required.
  GetDeveloperAppKeyArgs({
    required String appId,
    required String developerId,
    required String keyId,
    required String organizationId,
  })  : appId = pulumi.Input.asInput<String>(appId),
        developerId = pulumi.Input.asInput<String>(developerId),
        keyId = pulumi.Input.asInput<String>(keyId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

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
      appId: map['appId'] as String,
      developerId: map['developerId'] as String,
      keyId: map['keyId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
