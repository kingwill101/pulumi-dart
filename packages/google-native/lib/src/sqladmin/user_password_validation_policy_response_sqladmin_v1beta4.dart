// ignore_for_file: unused_element, unnecessary_cast

import 'password_status_response_sqladmin_v1beta4.dart';

/// User level password validation policy.
class UserPasswordValidationPolicyResponseSqladminV1beta4 {
  /// Number of failed login attempts allowed before user get locked.
  final int allowedFailedAttempts;

  /// If true, failed login attempts check will be enabled.
  final bool enableFailedAttemptsCheck;

  /// If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  final bool enablePasswordVerification;

  /// Expiration duration after password is updated.
  final String passwordExpirationDuration;

  /// Read-only password status.
  final PasswordStatusResponseSqladminV1beta4 status;

  /// Creates a new [UserPasswordValidationPolicyResponseSqladminV1beta4].
  /// [allowedFailedAttempts] Number of failed login attempts allowed before user get locked.
  /// [enableFailedAttemptsCheck] If true, failed login attempts check will be enabled.
  /// [enablePasswordVerification] If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  /// [passwordExpirationDuration] Expiration duration after password is updated.
  /// [status] Read-only password status.
  UserPasswordValidationPolicyResponseSqladminV1beta4({
    required this.allowedFailedAttempts,
    required this.enableFailedAttemptsCheck,
    required this.enablePasswordVerification,
    required this.passwordExpirationDuration,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFailedAttempts': allowedFailedAttempts,
      'enableFailedAttemptsCheck': enableFailedAttemptsCheck,
      'enablePasswordVerification': enablePasswordVerification,
      'passwordExpirationDuration': passwordExpirationDuration,
      'status': status.toMap(),
    };
  }

  factory UserPasswordValidationPolicyResponseSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserPasswordValidationPolicyResponseSqladminV1beta4(
      allowedFailedAttempts: map['allowedFailedAttempts'] as int,
      enableFailedAttemptsCheck: map['enableFailedAttemptsCheck'] as bool,
      enablePasswordVerification: map['enablePasswordVerification'] as bool,
      passwordExpirationDuration: map['passwordExpirationDuration'] as String,
      status: PasswordStatusResponseSqladminV1beta4.fromMap(
        (map['status'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
