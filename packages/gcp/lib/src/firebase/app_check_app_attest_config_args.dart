// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_check_app_attest_config_app_check_app_attest_config_args_doc}
/// The set of arguments for AppCheckAppAttestConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_check_app_attest_config_app_check_app_attest_config_args_doc}
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

  /// Creates a new [AppCheckAppAttestConfigArgs].
  /// [appId] The ID of an
  /// [project] The ID of the project in which the resource belongs.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid.
  AppCheckAppAttestConfigArgs({
    required String appId,
    String? project,
    String? tokenTtl,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tokenTtl = pulumi.Input.asOptionalInput<String>(tokenTtl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckAppAttestConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckAppAttestConfigArgs(
      appId: map['appId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tokenTtl: map['tokenTtl'] == null ? null : map['tokenTtl'] as String,
    );
  }
}

