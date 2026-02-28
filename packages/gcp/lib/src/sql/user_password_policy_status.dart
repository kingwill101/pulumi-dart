// ignore_for_file: unused_element, unnecessary_cast


class UserPasswordPolicyStatus {
  /// If true, user does not have login privileges.
  final bool? locked;
  /// Password expiration duration with one week grace period.
  final String? passwordExpirationTime;

  /// Creates a new [UserPasswordPolicyStatus].
  /// [locked] If true, user does not have login privileges.
  /// [passwordExpirationTime] Password expiration duration with one week grace period.
  UserPasswordPolicyStatus({
    this.locked,
    this.passwordExpirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locked': ?locked,
      'passwordExpirationTime': ?passwordExpirationTime,
    };
  }

  factory UserPasswordPolicyStatus.fromMap(Map<String, dynamic> map) {
    return UserPasswordPolicyStatus(
      locked: map['locked'] == null ? null : map['locked'] as bool,
      passwordExpirationTime: map['passwordExpirationTime'] == null ? null : map['passwordExpirationTime'] as String,
    );
  }
}

