// ignore_for_file: unused_element, unnecessary_cast

/// Read-only password status.
class PasswordStatusResponseSqladminV1beta4 {
  /// If true, user does not have login privileges.
  final bool locked;

  /// The expiration time of the current password.
  final String passwordExpirationTime;

  /// Creates a new [PasswordStatusResponseSqladminV1beta4].
  /// [locked] If true, user does not have login privileges.
  /// [passwordExpirationTime] The expiration time of the current password.
  PasswordStatusResponseSqladminV1beta4({
    required this.locked,
    required this.passwordExpirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locked': locked,
      'passwordExpirationTime': passwordExpirationTime,
    };
  }

  factory PasswordStatusResponseSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return PasswordStatusResponseSqladminV1beta4(
      locked: map['locked'] as bool,
      passwordExpirationTime: map['passwordExpirationTime'] as String,
    );
  }
}
