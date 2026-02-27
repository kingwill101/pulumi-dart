// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAndroidApp.
class GetAndroidAppArgs {
  final pulumi.Input<String> androidAppId;
  final pulumi.Input<String>? project;

  GetAndroidAppArgs({
    required this.androidAppId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidAppId'] = androidAppId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAndroidAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppArgs(
      androidAppId: pulumi.Input.asInput<String>(map['androidAppId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
