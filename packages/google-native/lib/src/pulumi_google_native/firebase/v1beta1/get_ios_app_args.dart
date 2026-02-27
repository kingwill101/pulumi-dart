// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIosApp.
class GetIosAppArgs {
  final pulumi.Input<String> iosAppId;
  final pulumi.Input<String>? project;

  GetIosAppArgs({
    required this.iosAppId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iosAppId'] = iosAppId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIosAppArgs.fromMap(Map<String, dynamic> map) {
    return GetIosAppArgs(
      iosAppId: pulumi.Input.asInput<String>(map['iosAppId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
