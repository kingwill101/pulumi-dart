// ignore_for_file: unused_element, unnecessary_cast

/// User level password validation policy.
class UserPasswordValidationPolicySqladminV1beta4 {
  /// Number of failed login attempts allowed before user get locked.
  final int? allowedFailedAttempts;

  /// If true, failed login attempts check will be enabled.
  final bool? enableFailedAttemptsCheck;

  /// If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  final bool? enablePasswordVerification;

  /// Expiration duration after password is updated.
  final String? passwordExpirationDuration;

  /// Creates a new [UserPasswordValidationPolicySqladminV1beta4].
  /// [allowedFailedAttempts] Number of failed login attempts allowed before user get locked.
  /// [enableFailedAttemptsCheck] If true, failed login attempts check will be enabled.
  /// [enablePasswordVerification] If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  /// [passwordExpirationDuration] Expiration duration after password is updated.
  UserPasswordValidationPolicySqladminV1beta4({
    this.allowedFailedAttempts,
    this.enableFailedAttemptsCheck,
    this.enablePasswordVerification,
    this.passwordExpirationDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFailedAttempts': ?allowedFailedAttempts,
      'enableFailedAttemptsCheck': ?enableFailedAttemptsCheck,
      'enablePasswordVerification': ?enablePasswordVerification,
      'passwordExpirationDuration': ?passwordExpirationDuration,
    };
  }

  factory UserPasswordValidationPolicySqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserPasswordValidationPolicySqladminV1beta4(
      allowedFailedAttempts: map['allowedFailedAttempts'] == null
          ? null
          : map['allowedFailedAttempts'] as int,
      enableFailedAttemptsCheck: map['enableFailedAttemptsCheck'] == null
          ? null
          : map['enableFailedAttemptsCheck'] as bool,
      enablePasswordVerification: map['enablePasswordVerification'] == null
          ? null
          : map['enablePasswordVerification'] as bool,
      passwordExpirationDuration: map['passwordExpirationDuration'] == null
          ? null
          : map['passwordExpirationDuration'] as String,
    );
  }
}
