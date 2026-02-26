// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRecaptchaOptionsConfigResponse {
  /// An optional field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final String redirectSiteKey;

  SecurityPolicyRecaptchaOptionsConfigResponse({
    required this.redirectSiteKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['redirectSiteKey'] = redirectSiteKey;
    return map;
  }

  factory SecurityPolicyRecaptchaOptionsConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRecaptchaOptionsConfigResponse(
      redirectSiteKey: map['redirectSiteKey'] as String,
    );
  }
}
