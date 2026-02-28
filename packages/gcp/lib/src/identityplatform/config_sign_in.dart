// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_sign_in_anonymous.dart';
import 'config_sign_in_email.dart';
import 'config_sign_in_hash_config.dart';
import 'config_sign_in_phone_number.dart';

class ConfigSignIn {
  /// Whether to allow more than one account to have the same email.
  final bool? allowDuplicateEmails;

  /// Configuration options related to authenticating an anonymous user.
  /// Structure is documented below.
  final ConfigSignInAnonymous? anonymous;

  /// Configuration options related to authenticating a user by their email address.
  /// Structure is documented below.
  final ConfigSignInEmail? email;

  /// (Output)
  /// Output only. Hash config information.
  /// Structure is documented below.
  final List<ConfigSignInHashConfig>? hashConfigs;

  /// Configuration options related to authenticated a user by their phone number.
  /// Structure is documented below.
  final ConfigSignInPhoneNumber? phoneNumber;

  /// Creates a new [ConfigSignIn].
  /// [allowDuplicateEmails] Whether to allow more than one account to have the same email.
  /// [anonymous] Configuration options related to authenticating an anonymous user.
  /// [email] Configuration options related to authenticating a user by their email address.
  /// [hashConfigs] (Output)
  /// [phoneNumber] Configuration options related to authenticated a user by their phone number.
  ConfigSignIn({
    this.allowDuplicateEmails,
    this.anonymous,
    this.email,
    this.hashConfigs,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowDuplicateEmailsValue = allowDuplicateEmails;
    if (allowDuplicateEmailsValue != null) {
      map['allowDuplicateEmails'] = allowDuplicateEmailsValue;
    }
    final anonymousValue = anonymous;
    if (anonymousValue != null) {
      map['anonymous'] = anonymousValue.toMap();
    }
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue.toMap();
    }
    final hashConfigsValue = hashConfigs;
    if (hashConfigsValue != null) {
      map['hashConfigs'] =
          pulumi.Input.encodeList<ConfigSignInHashConfig, Map<String, dynamic>>(
              hashConfigsValue, (value) => value.toMap());
    }
    final phoneNumberValue = phoneNumber;
    if (phoneNumberValue != null) {
      map['phoneNumber'] = phoneNumberValue.toMap();
    }
    return map;
  }

  factory ConfigSignIn.fromMap(Map<String, dynamic> map) {
    return ConfigSignIn(
      allowDuplicateEmails: map['allowDuplicateEmails'] == null
          ? null
          : map['allowDuplicateEmails'] as bool,
      anonymous: map['anonymous'] == null
          ? null
          : ConfigSignInAnonymous.fromMap(
              (map['anonymous'] as Map).cast<String, dynamic>()),
      email: map['email'] == null
          ? null
          : ConfigSignInEmail.fromMap(
              (map['email'] as Map).cast<String, dynamic>()),
      hashConfigs: map['hashConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ConfigSignInHashConfig>(
              map['hashConfigs'],
              (value) => ConfigSignInHashConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      phoneNumber: map['phoneNumber'] == null
          ? null
          : ConfigSignInPhoneNumber.fromMap(
              (map['phoneNumber'] as Map).cast<String, dynamic>()),
    );
  }
}
