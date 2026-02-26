// ignore_for_file: unused_element, unnecessary_cast

/// Controls sign-in behavior.
class SignInBehaviorResponse2 {
  /// When to redirect sign-ins to the IdP.
  final String redirectCondition;

  SignInBehaviorResponse2({
    required this.redirectCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['redirectCondition'] = redirectCondition;
    return map;
  }

  factory SignInBehaviorResponse2.fromMap(Map<String, dynamic> map) {
    return SignInBehaviorResponse2(
      redirectCondition: map['redirectCondition'] as String,
    );
  }
}
