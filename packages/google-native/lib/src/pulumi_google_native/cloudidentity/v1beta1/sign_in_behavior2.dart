// ignore_for_file: unused_element, unnecessary_cast

import 'sign_in_behavior_redirect_condition2.dart';

/// Controls sign-in behavior.
class SignInBehavior2 {
  /// When to redirect sign-ins to the IdP.
  final SignInBehaviorRedirectCondition2? redirectCondition;

  SignInBehavior2({
    this.redirectCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final redirectConditionValue = redirectCondition;
    if (redirectConditionValue != null) {
      map['redirectCondition'] = redirectConditionValue.value;
    }
    return map;
  }

  factory SignInBehavior2.fromMap(Map<String, dynamic> map) {
    return SignInBehavior2(
      redirectCondition: map['redirectCondition'] == null
          ? null
          : SignInBehaviorRedirectCondition2.fromValue(
              map['redirectCondition'] as String),
    );
  }
}
