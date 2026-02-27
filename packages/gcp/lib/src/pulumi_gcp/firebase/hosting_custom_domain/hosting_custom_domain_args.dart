// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HostingCustomDomain.
class HostingCustomDomainArgs {
  /// A field that lets you specify which SSL certificate type Hosting creates
  /// for your domain name. Spark plan `CustomDomain`s only have access to the
  /// `GROUPED` cert type, while Blaze plan can select any option.
  /// Possible values are: `GROUPED`, `PROJECT_GROUPED`, `DEDICATED`.
  final pulumi.Input<String>? certPreference;

  /// The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  final pulumi.Input<String> customDomain;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A domain name that this CustomDomain should direct traffic towards. If
  /// specified, Hosting will respond to requests against this CustomDomain
  /// with an HTTP 301 code, and route traffic to the specified `redirect_target`
  /// instead.
  final pulumi.Input<String>? redirectTarget;

  /// The ID of the site in which to create this custom domain association.
  final pulumi.Input<String> siteId;
  final pulumi.Input<bool>? waitDnsVerification;

  HostingCustomDomainArgs({
    this.certPreference,
    required this.customDomain,
    this.project,
    this.redirectTarget,
    required this.siteId,
    this.waitDnsVerification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certPreferenceValue = certPreference;
    if (certPreferenceValue != null) {
      map['certPreference'] = certPreferenceValue;
    }
    map['customDomain'] = customDomain;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final redirectTargetValue = redirectTarget;
    if (redirectTargetValue != null) {
      map['redirectTarget'] = redirectTargetValue;
    }
    map['siteId'] = siteId;
    final waitDnsVerificationValue = waitDnsVerification;
    if (waitDnsVerificationValue != null) {
      map['waitDnsVerification'] = waitDnsVerificationValue;
    }
    return map;
  }

  factory HostingCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainArgs(
      certPreference:
          pulumi.Input.asOptionalInput<String>(map['certPreference']),
      customDomain: pulumi.Input.asInput<String>(map['customDomain']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      redirectTarget:
          pulumi.Input.asOptionalInput<String>(map['redirectTarget']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
      waitDnsVerification:
          pulumi.Input.asOptionalInput<bool>(map['waitDnsVerification']),
    );
  }
}
