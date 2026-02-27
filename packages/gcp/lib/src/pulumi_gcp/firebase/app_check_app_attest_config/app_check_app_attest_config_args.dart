// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AppCheckAppAttestConfig.
class AppCheckAppAttestConfigArgs {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  final pulumi.Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  AppCheckAppAttestConfigArgs({
    required this.appId,
    this.project,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tokenTtlValue = tokenTtl;
    if (tokenTtlValue != null) {
      map['tokenTtl'] = tokenTtlValue;
    }
    return map;
  }

  factory AppCheckAppAttestConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckAppAttestConfigArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tokenTtl: pulumi.Input.asOptionalInput<String>(map['tokenTtl']),
    );
  }
}
