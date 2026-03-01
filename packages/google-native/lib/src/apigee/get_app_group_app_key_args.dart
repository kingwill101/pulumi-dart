// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_app_group_app_key_args_doc}
/// Arguments for getAppGroupAppKey.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_app_group_app_key_args_doc}
class GetAppGroupAppKeyArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> appgroupId;
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetAppGroupAppKeyArgs].
  /// [appId] Required.
  /// [appgroupId] Required.
  /// [keyId] Required.
  /// [organizationId] Required.
  GetAppGroupAppKeyArgs({
    required String appId,
    required String appgroupId,
    required String keyId,
    required String organizationId,
  }) : appId = pulumi.Input.asInput<String>(appId),
       appgroupId = pulumi.Input.asInput<String>(appgroupId),
       keyId = pulumi.Input.asInput<String>(keyId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appgroupId': appgroupId,
      'keyId': keyId,
      'organizationId': organizationId,
    };
  }

  factory GetAppGroupAppKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGroupAppKeyArgs(
      appId: map['appId'] as String,
      appgroupId: map['appgroupId'] as String,
      keyId: map['keyId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
