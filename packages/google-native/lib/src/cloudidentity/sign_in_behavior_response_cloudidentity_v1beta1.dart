// ignore_for_file: unused_element, unnecessary_cast

/// Controls sign-in behavior.
class SignInBehaviorResponseCloudidentityV1beta1 {
  /// When to redirect sign-ins to the IdP.
  final String redirectCondition;

  /// Creates a new [SignInBehaviorResponseCloudidentityV1beta1].
  /// [redirectCondition] When to redirect sign-ins to the IdP.
  SignInBehaviorResponseCloudidentityV1beta1({
    required this.redirectCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['redirectCondition'] = redirectCondition;
    return map;
  }

  factory SignInBehaviorResponseCloudidentityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SignInBehaviorResponseCloudidentityV1beta1(
      redirectCondition: map['redirectCondition'] as String,
    );
  }
}
