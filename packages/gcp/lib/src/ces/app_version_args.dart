// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ces_app_version_app_version_args_doc}
/// The set of arguments for AppVersion.
/// {@endtemplate}
/// {@macro pulumi_ces_app_version_app_version_args_doc}
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

  /// Creates a new [AppVersionArgs].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [appVersionId] The ID to use for the app version, which will become the final component
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  AppVersionArgs({
    required String app,
    required String appVersionId,
    String? description,
    String? displayName,
    required String location,
    String? project,
  }) : app = pulumi.Input.asInput<String>(app),
       appVersionId = pulumi.Input.asInput<String>(appVersionId),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'appVersionId': appVersionId,
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
    };
  }

  factory AppVersionArgs.fromMap(Map<String, dynamic> map) {
    return AppVersionArgs(
      app: map['app'] as String,
      appVersionId: map['appVersionId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
