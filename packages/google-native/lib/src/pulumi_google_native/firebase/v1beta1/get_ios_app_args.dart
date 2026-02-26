// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIosApp.
class GetIosAppArgs {
  final Input<String> iosAppId;
  final Input<String>? project;

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
      iosAppId: Input.asInput<String>(map['iosAppId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
