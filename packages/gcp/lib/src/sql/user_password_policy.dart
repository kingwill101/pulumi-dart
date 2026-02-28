// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_password_policy_status.dart';

class UserPasswordPolicy {
  /// Number of failed attempts allowed before the user get locked.
  final int? allowedFailedAttempts;

  /// If true, the check that will lock user after too many failed login attempts will be enabled.
  final bool? enableFailedAttemptsCheck;

  /// If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  final bool? enablePasswordVerification;

  /// Password expiration duration with one week grace period.
  final String? passwordExpirationDuration;
  final List<UserPasswordPolicyStatus>? statuses;

  /// Creates a new [UserPasswordPolicy].
  /// [allowedFailedAttempts] Number of failed attempts allowed before the user get locked.
  /// [enableFailedAttemptsCheck] If true, the check that will lock user after too many failed login attempts will be enabled.
  /// [enablePasswordVerification] If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.
  /// [passwordExpirationDuration] Password expiration duration with one week grace period.
  /// [statuses] Optional.
  UserPasswordPolicy({
    this.allowedFailedAttempts,
    this.enableFailedAttemptsCheck,
    this.enablePasswordVerification,
    this.passwordExpirationDuration,
    this.statuses,
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
    final statusesValue = statuses;
    if (statusesValue != null) {
      map['statuses'] = pulumi.Input.encodeList<UserPasswordPolicyStatus,
          Map<String, dynamic>>(statusesValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserPasswordPolicy.fromMap(Map<String, dynamic> map) {
    return UserPasswordPolicy(
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
      statuses: map['statuses'] == null
          ? null
          : pulumi.Input.decodeList<UserPasswordPolicyStatus>(
              map['statuses'],
              (value) => UserPasswordPolicyStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
