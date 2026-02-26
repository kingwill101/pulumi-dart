// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAndroidApp.
class GetAndroidAppArgs {
  /// The<span pulumi-lang-nodejs=" appId " pulumi-lang-dotnet=" AppId " pulumi-lang-go=" appId " pulumi-lang-python=" app_id " pulumi-lang-yaml=" appId " pulumi-lang-java=" appId "> app_id </span>of name of the Firebase androidApp.
  ///
  ///
  /// - - -
  final Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  GetAndroidAppArgs({
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

  factory GetAndroidAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppArgs(
      appId: Input.asInput<String>(map['appId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
