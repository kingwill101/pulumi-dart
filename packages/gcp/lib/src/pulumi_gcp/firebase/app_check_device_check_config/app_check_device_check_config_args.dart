// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AppCheckDeviceCheckConfig.
class AppCheckDeviceCheckConfigArgs {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  final pulumi.Input<String> appId;

  /// The key identifier of a private key enabled with DeviceCheck, created in your Apple Developer account.
  final pulumi.Input<String> keyId;

  /// The contents of the private key (.p8) file associated with the key specified by keyId.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> privateKey;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the duration for which App Check tokens exchanged from DeviceCheck artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  AppCheckDeviceCheckConfigArgs({
    required this.appId,
    required this.keyId,
    required this.privateKey,
    this.project,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['keyId'] = keyId;
    map['privateKey'] = privateKey;
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

  factory AppCheckDeviceCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckDeviceCheckConfigArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      privateKey: pulumi.Input.asInput<String>(map['privateKey']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tokenTtl: pulumi.Input.asOptionalInput<String>(map['tokenTtl']),
    );
  }
}
