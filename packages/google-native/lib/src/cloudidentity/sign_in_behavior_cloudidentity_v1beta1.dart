// ignore_for_file: unused_element, unnecessary_cast

import 'sign_in_behavior_redirect_condition_cloudidentity_v1beta1.dart';

/// Controls sign-in behavior.
class SignInBehaviorCloudidentityV1beta1 {
  /// When to redirect sign-ins to the IdP.
  final SignInBehaviorRedirectConditionCloudidentityV1beta1? redirectCondition;

  /// Creates a new [SignInBehaviorCloudidentityV1beta1].
  /// [redirectCondition] When to redirect sign-ins to the IdP.
  SignInBehaviorCloudidentityV1beta1({
    this.redirectCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectCondition': ?redirectCondition == null ? null : redirectCondition!.value,
    };
  }

  factory SignInBehaviorCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return SignInBehaviorCloudidentityV1beta1(
      redirectCondition: map['redirectCondition'] == null ? null : SignInBehaviorRedirectConditionCloudidentityV1beta1.fromValue(map['redirectCondition'] as String),
    );
  }
}

