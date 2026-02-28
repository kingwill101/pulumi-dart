// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_web_app_config_get_web_app_config_args_doc}
/// Arguments for getWebAppConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_web_app_config_get_web_app_config_args_doc}
class GetWebAppConfigArgs {
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// the id of the firebase web app
  ///
  /// - - -
  final pulumi.Input<String> webAppId;

  /// Creates a new [GetWebAppConfigArgs].
  /// [project] The ID of the project in which the resource belongs. If it
  /// [webAppId] the id of the firebase web app
  GetWebAppConfigArgs({
    String? project,
    required String webAppId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        webAppId = pulumi.Input.asInput<String>(webAppId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['webAppId'] = webAppId;
    return map;
  }

  factory GetWebAppConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppConfigArgs(
      project: map['project'] == null ? null : map['project'] as String,
      webAppId: map['webAppId'] as String,
    );
  }
}
