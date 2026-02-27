// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AppCheckRecaptchaV3Config.
class AppCheckRecaptchaV3ConfigArgs {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  final pulumi.Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The site secret used to identify your service for reCAPTCHA v3 verification.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> siteSecret;

  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  AppCheckRecaptchaV3ConfigArgs({
    required this.appId,
    this.project,
    required this.siteSecret,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteSecret'] = siteSecret;
    final tokenTtlValue = tokenTtl;
    if (tokenTtlValue != null) {
      map['tokenTtl'] = tokenTtlValue;
    }
    return map;
  }

  factory AppCheckRecaptchaV3ConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckRecaptchaV3ConfigArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      siteSecret: pulumi.Input.asInput<String>(map['siteSecret']),
      tokenTtl: pulumi.Input.asOptionalInput<String>(map['tokenTtl']),
    );
  }
}
