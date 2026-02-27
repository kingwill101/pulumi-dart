// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AppCheckDebugToken.
class AppCheckDebugTokenArgs {
  /// The ID of a
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
  /// or [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)
  final pulumi.Input<String> appId;

  /// A human readable display name used to identify this debug token.
  final pulumi.Input<String> displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The secret token itself. Must be provided during creation, and must be a UUID4,
  /// case insensitive. You may use a method of your choice such as random/random_uuid
  /// to generate the token.
  /// This field is immutable once set, and cannot be updated. You can, however, delete
  /// this debug token to revoke it.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> token;

  AppCheckDebugTokenArgs({
    required this.appId,
    required this.displayName,
    this.project,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['displayName'] = displayName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['token'] = token;
    return map;
  }

  factory AppCheckDebugTokenArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckDebugTokenArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      token: pulumi.Input.asInput<String>(map['token']),
    );
  }
}
