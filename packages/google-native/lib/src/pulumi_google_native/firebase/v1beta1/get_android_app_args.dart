// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAndroidApp.
class GetAndroidAppArgs {
  final Input<String> androidAppId;
  final Input<String>? project;

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
      androidAppId: Input.asInput<String>(map['androidAppId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
