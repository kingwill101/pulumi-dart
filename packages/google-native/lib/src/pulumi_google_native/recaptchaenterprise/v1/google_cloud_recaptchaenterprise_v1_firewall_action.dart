// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_recaptchaenterprise_v1_firewall_action_set_header_action.dart';
import 'google_cloud_recaptchaenterprise_v1_firewall_action_substitute_action.dart';

/// An individual action. Each action represents what to do if a policy matches.
class GoogleCloudRecaptchaenterpriseV1FirewallAction {
  /// The user request did not match any policy and should be allowed access to the requested resource.
  final Map<String, dynamic>? allow;

  /// This action will deny access to a given page. The user will get an HTTP error code.
  final Map<String, dynamic>? block;

  /// This action will redirect the request to a ReCaptcha interstitial to attach a token.
  final Map<String, dynamic>? redirect;

  /// This action will set a custom header but allow the request to continue to the customer backend.
  final GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction?
      setHeader;

  /// This action will transparently serve a different page to an offending user.
  final GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction?
      substitute;

  GoogleCloudRecaptchaenterpriseV1FirewallAction({
    this.allow,
    this.block,
    this.redirect,
    this.setHeader,
    this.substitute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowValue = allow;
    if (allowValue != null) {
      map['allow'] = allowValue;
    }
    final blockValue = block;
    if (blockValue != null) {
      map['block'] = blockValue;
    }
    final redirectValue = redirect;
    if (redirectValue != null) {
      map['redirect'] = redirectValue;
    }
    final setHeaderValue = setHeader;
    if (setHeaderValue != null) {
      map['setHeader'] = setHeaderValue.toMap();
    }
    final substituteValue = substitute;
    if (substituteValue != null) {
      map['substitute'] = substituteValue.toMap();
    }
    return map;
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallAction(
      allow: map['allow'] == null
          ? null
          : (map['allow'] as Map).cast<String, dynamic>(),
      block: map['block'] == null
          ? null
          : (map['block'] as Map).cast<String, dynamic>(),
      redirect: map['redirect'] == null
          ? null
          : (map['redirect'] as Map).cast<String, dynamic>(),
      setHeader: map['setHeader'] == null
          ? null
          : GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
              .fromMap((map['setHeader'] as Map).cast<String, dynamic>()),
      substitute: map['substitute'] == null
          ? null
          : GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
              .fromMap((map['substitute'] as Map).cast<String, dynamic>()),
    );
  }
}
