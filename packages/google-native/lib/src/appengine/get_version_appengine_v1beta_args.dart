// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1beta_get_version_appengine_v1beta_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_get_version_appengine_v1beta_args_doc}
class GetVersionAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> versionId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetVersionAppengineV1betaArgs].
  /// [appId] Required.
  /// [includeExtraData] Optional.
  /// [serviceId] Required.
  /// [versionId] Required.
  /// [view] Optional.
  GetVersionAppengineV1betaArgs({
    required String appId,
    String? includeExtraData,
    required String serviceId,
    required String versionId,
    String? view,
  })  : appId = pulumi.Input.asInput<String>(appId),
        includeExtraData =
            pulumi.Input.asOptionalInput<String>(includeExtraData),
        serviceId = pulumi.Input.asInput<String>(serviceId),
        versionId = pulumi.Input.asInput<String>(versionId),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final includeExtraDataValue = includeExtraData;
    if (includeExtraDataValue != null) {
      map['includeExtraData'] = includeExtraDataValue;
    }
    map['serviceId'] = serviceId;
    map['versionId'] = versionId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetVersionAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionAppengineV1betaArgs(
      appId: map['appId'] as String,
      includeExtraData: map['includeExtraData'] == null
          ? null
          : map['includeExtraData'] as String,
      serviceId: map['serviceId'] as String,
      versionId: map['versionId'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
