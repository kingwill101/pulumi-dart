// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1beta_get_app_appengine_v1beta_args_doc}
/// Arguments for getApp.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_get_app_appengine_v1beta_args_doc}
class GetAppAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;

  /// Creates a new [GetAppAppengineV1betaArgs].
  /// [appId] Required.
  /// [includeExtraData] Optional.
  GetAppAppengineV1betaArgs({
    required String appId,
    String? includeExtraData,
  })  : appId = pulumi.Input.asInput<String>(appId),
        includeExtraData =
            pulumi.Input.asOptionalInput<String>(includeExtraData);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final includeExtraDataValue = includeExtraData;
    if (includeExtraDataValue != null) {
      map['includeExtraData'] = includeExtraDataValue;
    }
    return map;
  }

  factory GetAppAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetAppAppengineV1betaArgs(
      appId: map['appId'] as String,
      includeExtraData: map['includeExtraData'] == null
          ? null
          : map['includeExtraData'] as String,
    );
  }
}
