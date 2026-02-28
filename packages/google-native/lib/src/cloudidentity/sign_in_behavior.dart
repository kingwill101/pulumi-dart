// ignore_for_file: unused_element, unnecessary_cast

import 'sign_in_behavior_redirect_condition.dart';

/// Controls sign-in behavior.
class SignInBehavior {
  /// When to redirect sign-ins to the IdP.
  final SignInBehaviorRedirectCondition? redirectCondition;

  /// Creates a new [SignInBehavior].
  /// [redirectCondition] When to redirect sign-ins to the IdP.
  SignInBehavior({
    this.redirectCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectCondition': ?redirectCondition == null ? null : redirectCondition!.value,
    };
  }

  factory SignInBehavior.fromMap(Map<String, dynamic> map) {
    return SignInBehavior(
      redirectCondition: map['redirectCondition'] == null ? null : SignInBehaviorRedirectCondition.fromValue(map['redirectCondition'] as String),
    );
  }
}

