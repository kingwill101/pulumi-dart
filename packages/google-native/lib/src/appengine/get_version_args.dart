// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_get_version_args_doc}
class GetVersionArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> versionId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetVersionArgs].
  /// [appId] Required.
  /// [serviceId] Required.
  /// [versionId] Required.
  /// [view] Optional.
  GetVersionArgs({
    required String appId,
    required String serviceId,
    required String versionId,
    String? view,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      versionId = pulumi.Input.asInput<String>(versionId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'serviceId': serviceId,
      'versionId': versionId,
      'view': ?view,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      appId: map['appId'] as String,
      serviceId: map['serviceId'] as String,
      versionId: map['versionId'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

