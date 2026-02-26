// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_recaptchaenterprise_v1_firewall_action_set_header_action_response.dart';
import 'google_cloud_recaptchaenterprise_v1_firewall_action_substitute_action_response.dart';

/// An individual action. Each action represents what to do if a policy matches.
class GoogleCloudRecaptchaenterpriseV1FirewallActionResponse {
  /// The user request did not match any policy and should be allowed access to the requested resource.
  final Map<String, dynamic> allow;

  /// This action will deny access to a given page. The user will get an HTTP error code.
  final Map<String, dynamic> block;

  /// This action will redirect the request to a ReCaptcha interstitial to attach a token.
  final Map<String, dynamic> redirect;

  /// This action will set a custom header but allow the request to continue to the customer backend.
  final GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse
      setHeader;

  /// This action will transparently serve a different page to an offending user.
  final GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse
      substitute;

  GoogleCloudRecaptchaenterpriseV1FirewallActionResponse({
    required this.allow,
    required this.block,
    required this.redirect,
    required this.setHeader,
    required this.substitute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allow'] = allow;
    map['block'] = block;
    map['redirect'] = redirect;
    map['setHeader'] = setHeader.toMap();
    map['substitute'] = substitute.toMap();
    return map;
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallActionResponse(
      allow: (map['allow'] as Map).cast<String, dynamic>(),
      block: (map['block'] as Map).cast<String, dynamic>(),
      redirect: (map['redirect'] as Map).cast<String, dynamic>(),
      setHeader:
          GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse
              .fromMap((map['setHeader'] as Map).cast<String, dynamic>()),
      substitute:
          GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse
              .fromMap((map['substitute'] as Map).cast<String, dynamic>()),
    );
  }
}
