// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRecaptchaOptionsConfigResponseComputeV1 {
  /// An optional field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final String redirectSiteKey;

  SecurityPolicyRecaptchaOptionsConfigResponseComputeV1({
    required this.redirectSiteKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['redirectSiteKey'] = redirectSiteKey;
    return map;
  }

  factory SecurityPolicyRecaptchaOptionsConfigResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRecaptchaOptionsConfigResponseComputeV1(
      redirectSiteKey: map['redirectSiteKey'] as String,
    );
  }
}
