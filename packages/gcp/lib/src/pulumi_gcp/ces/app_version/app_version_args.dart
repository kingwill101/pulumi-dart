// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AppVersion.
class AppVersionArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;

  /// The ID to use for the app version, which will become the final component
  /// of the app version's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app version.
  final pulumi.Input<String> appVersionId;

  /// The description of the app version.
  final pulumi.Input<String>? description;

  /// The display name of the app version.
  final pulumi.Input<String>? displayName;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  AppVersionArgs({
    required this.app,
    required this.appVersionId,
    this.description,
    this.displayName,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['app'] = app;
    map['appVersionId'] = appVersionId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AppVersionArgs.fromMap(Map<String, dynamic> map) {
    return AppVersionArgs(
      app: pulumi.Input.asInput<String>(map['app']),
      appVersionId: pulumi.Input.asInput<String>(map['appVersionId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
