// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_v1beta1_get_web_app_args_doc}
/// Arguments for getWebApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_v1beta1_get_web_app_args_doc}
class GetWebAppArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> webAppId;

  /// Creates a new [GetWebAppArgs].
  /// [project] Optional.
  /// [webAppId] Required.
  GetWebAppArgs({String? project, required String webAppId})
    : project = pulumi.Input.asOptionalInput<String>(project),
      webAppId = pulumi.Input.asInput<String>(webAppId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'webAppId': webAppId};
  }

  factory GetWebAppArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppArgs(
      project: map['project'] == null ? null : map['project'] as String,
      webAppId: map['webAppId'] as String,
    );
  }
}
