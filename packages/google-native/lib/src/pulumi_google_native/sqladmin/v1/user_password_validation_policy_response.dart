// ignore_for_file: unused_element, unnecessary_cast

import 'password_status_response.dart';

/// User level password validation policy.
class UserPasswordValidationPolicyResponse {
  /// Number of failed login attempts allowed before user get locked.
  final int allowedFailedAttempts;

  /// If true, failed login attempts check will be enabled.
  final bool enableFailedAttemptsCheck;

  /// If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  final bool enablePasswordVerification;

  /// Expiration duration after password is updated.
  final String passwordExpirationDuration;

  /// Read-only password status.
  final PasswordStatusResponse status;

  UserPasswordValidationPolicyResponse({
    required this.allowedFailedAttempts,
    required this.enableFailedAttemptsCheck,
    required this.enablePasswordVerification,
    required this.passwordExpirationDuration,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedFailedAttempts'] = allowedFailedAttempts;
    map['enableFailedAttemptsCheck'] = enableFailedAttemptsCheck;
    map['enablePasswordVerification'] = enablePasswordVerification;
    map['passwordExpirationDuration'] = passwordExpirationDuration;
    map['status'] = status.toMap();
    return map;
  }

  factory UserPasswordValidationPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return UserPasswordValidationPolicyResponse(
      allowedFailedAttempts: map['allowedFailedAttempts'] as int,
      enableFailedAttemptsCheck: map['enableFailedAttemptsCheck'] as bool,
      enablePasswordVerification: map['enablePasswordVerification'] as bool,
      passwordExpirationDuration: map['passwordExpirationDuration'] as String,
      status: PasswordStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
    );
  }
}
