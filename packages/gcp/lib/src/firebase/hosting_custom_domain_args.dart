// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_hosting_custom_domain_hosting_custom_domain_args_doc}
/// The set of arguments for HostingCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_firebase_hosting_custom_domain_hosting_custom_domain_args_doc}
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

  /// Creates a new [HostingCustomDomainArgs].
  /// [certPreference] A field that lets you specify which SSL certificate type Hosting creates
  /// [customDomain] The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  /// [project] The ID of the project in which the resource belongs.
  /// [redirectTarget] A domain name that this CustomDomain should direct traffic towards. If
  /// [siteId] The ID of the site in which to create this custom domain association.
  /// [waitDnsVerification] Optional.
  HostingCustomDomainArgs({
    String? certPreference,
    required String customDomain,
    String? project,
    String? redirectTarget,
    required String siteId,
    bool? waitDnsVerification,
  })  : certPreference = pulumi.Input.asOptionalInput<String>(certPreference),
        customDomain = pulumi.Input.asInput<String>(customDomain),
        project = pulumi.Input.asOptionalInput<String>(project),
        redirectTarget = pulumi.Input.asOptionalInput<String>(redirectTarget),
        siteId = pulumi.Input.asInput<String>(siteId),
        waitDnsVerification =
            pulumi.Input.asOptionalInput<bool>(waitDnsVerification);

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
      certPreference: map['certPreference'] == null
          ? null
          : map['certPreference'] as String,
      customDomain: map['customDomain'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      redirectTarget: map['redirectTarget'] == null
          ? null
          : map['redirectTarget'] as String,
      siteId: map['siteId'] as String,
      waitDnsVerification: map['waitDnsVerification'] == null
          ? null
          : map['waitDnsVerification'] as bool,
    );
  }
}
