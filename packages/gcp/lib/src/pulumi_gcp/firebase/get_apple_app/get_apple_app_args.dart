// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppleApp.
class GetAppleAppArgs {
  /// The app_id of name of the Firebase iosApp.
  ///
  ///
  /// - - -
  final pulumi.Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetAppleAppArgs({
    required this.appId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAppleAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppleAppArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
