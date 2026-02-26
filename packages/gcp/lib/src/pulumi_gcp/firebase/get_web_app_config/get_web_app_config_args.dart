// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWebAppConfig.
class GetWebAppConfigArgs {
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// the id of the firebase web app
  ///
  /// - - -
  final Input<String> webAppId;

  GetWebAppConfigArgs({
    this.project,
    required this.webAppId,
  });

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
      project: Input.asOptionalInput<String>(map['project']),
      webAppId: Input.asInput<String>(map['webAppId']),
    );
  }
}
