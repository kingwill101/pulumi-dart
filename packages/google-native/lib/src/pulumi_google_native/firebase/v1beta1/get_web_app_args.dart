// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWebApp.
class GetWebAppArgs {
  final Input<String>? project;
  final Input<String> webAppId;

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
      project: Input.asOptionalInput<String>(map['project']),
      webAppId: Input.asInput<String>(map['webAppId']),
    );
  }
}
