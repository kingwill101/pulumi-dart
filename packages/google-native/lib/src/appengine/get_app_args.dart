// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1_get_app_args_doc}
/// Arguments for getApp.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_get_app_args_doc}
class GetAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;

  /// Creates a new [GetAppArgs].
  /// [appId] Required.
  /// [includeExtraData] Optional.
  GetAppArgs({
    required String appId,
    String? includeExtraData,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      includeExtraData = pulumi.Input.asOptionalInput<String>(includeExtraData);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'includeExtraData': ?includeExtraData,
    };
  }

  factory GetAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppArgs(
      appId: map['appId'] as String,
      includeExtraData: map['includeExtraData'] == null ? null : map['includeExtraData'] as String,
    );
  }
}

