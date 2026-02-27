// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWebApp.
class GetWebAppArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> webAppId;

  GetWebAppArgs({
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

  factory GetWebAppArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      webAppId: pulumi.Input.asInput<String>(map['webAppId']),
    );
  }
}
