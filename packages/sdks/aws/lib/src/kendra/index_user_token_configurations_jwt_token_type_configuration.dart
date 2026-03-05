// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexUserTokenConfigurationsJwtTokenTypeConfiguration {
  /// The regular expression that identifies the claim. Minimum length of 1. Maximum length of 100.
  final pulumi.Input<String>? claimRegex;
  /// The group attribute field. Minimum length of 1. Maximum length of 100.
  final pulumi.Input<String>? groupAttributeField;
  /// The issuer of the token. Minimum length of 1. Maximum length of 65.
  final pulumi.Input<String>? issuer;
  /// The location of the key. Valid values are `URL` or `SECRET_MANAGER`
  final pulumi.Input<String> keyLocation;
  /// The Amazon Resource Name (ARN) of the secret.
  final pulumi.Input<String>? secretsManagerArn;
  /// The signing key URL. Valid pattern is `^(https?|ftp|file):\/\/([^\s]*)`
  final pulumi.Input<String>? url;
  /// The user name attribute field. Minimum length of 1. Maximum length of 100.
  final pulumi.Input<String>? userNameAttributeField;

  /// Creates a new [IndexUserTokenConfigurationsJwtTokenTypeConfiguration].
  /// [claimRegex] The regular expression that identifies the claim. Minimum length of 1. Maximum length of 100.
  /// [groupAttributeField] The group attribute field. Minimum length of 1. Maximum length of 100.
  /// [issuer] The issuer of the token. Minimum length of 1. Maximum length of 65.
  /// [keyLocation] The location of the key. Valid values are `URL` or `SECRET_MANAGER`
  /// [secretsManagerArn] The Amazon Resource Name (ARN) of the secret.
  /// [url] The signing key URL. Valid pattern is `^(https?|ftp|file):\/\/([^\s]*)`
  /// [userNameAttributeField] The user name attribute field. Minimum length of 1. Maximum length of 100.
  IndexUserTokenConfigurationsJwtTokenTypeConfiguration({
    this.claimRegex,
    this.groupAttributeField,
    this.issuer,
    required this.keyLocation,
    this.secretsManagerArn,
    this.url,
    this.userNameAttributeField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimRegex': ?claimRegex,
      'groupAttributeField': ?groupAttributeField,
      'issuer': ?issuer,
      'keyLocation': keyLocation,
      'secretsManagerArn': ?secretsManagerArn,
      'url': ?url,
      'userNameAttributeField': ?userNameAttributeField,
    };
  }

  factory IndexUserTokenConfigurationsJwtTokenTypeConfiguration.fromMap(Map<String, dynamic> map) {
    return IndexUserTokenConfigurationsJwtTokenTypeConfiguration(
      claimRegex: (() { final guardedValue = map['claimRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupAttributeField: (() { final guardedValue = map['groupAttributeField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyLocation: pulumi.Input.fromValue(map['keyLocation'] as String),
      secretsManagerArn: (() { final guardedValue = map['secretsManagerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userNameAttributeField: (() { final guardedValue = map['userNameAttributeField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

