// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppleApp.
class GetAppleAppArgs {
  /// The<span pulumi-lang-nodejs=" appId " pulumi-lang-dotnet=" AppId " pulumi-lang-go=" appId " pulumi-lang-python=" app_id " pulumi-lang-yaml=" appId " pulumi-lang-java=" appId "> app_id </span>of name of the Firebase iosApp.
  ///
  ///
  /// - - -
  final Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      appId: Input.asInput<String>(map['appId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
