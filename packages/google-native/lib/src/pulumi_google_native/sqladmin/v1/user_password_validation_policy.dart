// ignore_for_file: unused_element, unnecessary_cast

/// User level password validation policy.
class UserPasswordValidationPolicy {
  /// Number of failed login attempts allowed before user get locked.
  final int? allowedFailedAttempts;

  /// If true, failed login attempts check will be enabled.
  final bool? enableFailedAttemptsCheck;

  /// If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  final bool? enablePasswordVerification;

  /// Expiration duration after password is updated.
  final String? passwordExpirationDuration;

  UserPasswordValidationPolicy({
    this.allowedFailedAttempts,
    this.enableFailedAttemptsCheck,
    this.enablePasswordVerification,
    this.passwordExpirationDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedFailedAttemptsValue = allowedFailedAttempts;
    if (allowedFailedAttemptsValue != null) {
      map['allowedFailedAttempts'] = allowedFailedAttemptsValue;
    }
    final enableFailedAttemptsCheckValue = enableFailedAttemptsCheck;
    if (enableFailedAttemptsCheckValue != null) {
      map['enableFailedAttemptsCheck'] = enableFailedAttemptsCheckValue;
    }
    final enablePasswordVerificationValue = enablePasswordVerification;
    if (enablePasswordVerificationValue != null) {
      map['enablePasswordVerification'] = enablePasswordVerificationValue;
    }
    final passwordExpirationDurationValue = passwordExpirationDuration;
    if (passwordExpirationDurationValue != null) {
      map['passwordExpirationDuration'] = passwordExpirationDurationValue;
    }
    return map;
  }

  factory UserPasswordValidationPolicy.fromMap(Map<String, dynamic> map) {
    return UserPasswordValidationPolicy(
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
