// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AppCheckRecaptchaEnterpriseConfig.
class AppCheckRecaptchaEnterpriseConfigArgs {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  final Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The score-based site key created in reCAPTCHA Enterprise used to invoke reCAPTCHA and generate the reCAPTCHA tokens for your application.
  /// **Important**: This is not the siteSecret (as it is in reCAPTCHA v3), but rather your score-based reCAPTCHA Enterprise site key.
  final Input<String> siteKey;

  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA Enterprise artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final Input<String>? tokenTtl;

  AppCheckRecaptchaEnterpriseConfigArgs({
    required this.appId,
    this.project,
    required this.siteKey,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteKey'] = siteKey;
    final tokenTtlValue = tokenTtl;
    if (tokenTtlValue != null) {
      map['tokenTtl'] = tokenTtlValue;
    }
    return map;
  }

  factory AppCheckRecaptchaEnterpriseConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return AppCheckRecaptchaEnterpriseConfigArgs(
      appId: Input.asInput<String>(map['appId']),
      project: Input.asOptionalInput<String>(map['project']),
      siteKey: Input.asInput<String>(map['siteKey']),
      tokenTtl: Input.asOptionalInput<String>(map['tokenTtl']),
    );
  }
}
