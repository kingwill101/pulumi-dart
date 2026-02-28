// ignore_for_file: unused_element, unnecessary_cast


/// Controls sign-in behavior.
class SignInBehaviorResponse {
  /// When to redirect sign-ins to the IdP.
  final String redirectCondition;

  /// Creates a new [SignInBehaviorResponse].
  /// [redirectCondition] When to redirect sign-ins to the IdP.
  SignInBehaviorResponse({
    required this.redirectCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectCondition': redirectCondition,
    };
  }

  factory SignInBehaviorResponse.fromMap(Map<String, dynamic> map) {
    return SignInBehaviorResponse(
      redirectCondition: map['redirectCondition'] as String,
    );
  }
}

