// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_app_group_app_args_doc}
/// Arguments for getAppGroupApp.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_app_group_app_args_doc}
class GetAppGroupAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> appgroupId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetAppGroupAppArgs].
  /// [appId] Required.
  /// [appgroupId] Required.
  /// [organizationId] Required.
  GetAppGroupAppArgs({
    required String appId,
    required String appgroupId,
    required String organizationId,
  }) : appId = pulumi.Input.asInput<String>(appId),
       appgroupId = pulumi.Input.asInput<String>(appgroupId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appgroupId': appgroupId,
      'organizationId': organizationId,
    };
  }

  factory GetAppGroupAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGroupAppArgs(
      appId: map['appId'] as String,
      appgroupId: map['appgroupId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
