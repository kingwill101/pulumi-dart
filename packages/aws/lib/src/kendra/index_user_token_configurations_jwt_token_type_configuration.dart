// ignore_for_file: unused_element, unnecessary_cast

class IndexUserTokenConfigurationsJwtTokenTypeConfiguration {
  /// The regular expression that identifies the claim. Minimum length of 1. Maximum length of 100.
  final String? claimRegex;

  /// The group attribute field. Minimum length of 1. Maximum length of 100.
  final String? groupAttributeField;

  /// The issuer of the token. Minimum length of 1. Maximum length of 65.
  final String? issuer;

  /// The location of the key. Valid values are `URL` or `SECRET_MANAGER`
  final String keyLocation;

  /// The Amazon Resource Name (ARN) of the secret.
  final String? secretsManagerArn;

  /// The signing key URL. Valid pattern is `^(https?|ftp|file):\/\/([^\s]*)`
  final String? url;

  /// The user name attribute field. Minimum length of 1. Maximum length of 100.
  final String? userNameAttributeField;

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

  factory IndexUserTokenConfigurationsJwtTokenTypeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return IndexUserTokenConfigurationsJwtTokenTypeConfiguration(
      claimRegex: map['claimRegex'] == null
          ? null
          : map['claimRegex'] as String,
      groupAttributeField: map['groupAttributeField'] == null
          ? null
          : map['groupAttributeField'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      keyLocation: map['keyLocation'] as String,
      secretsManagerArn: map['secretsManagerArn'] == null
          ? null
          : map['secretsManagerArn'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      userNameAttributeField: map['userNameAttributeField'] == null
          ? null
          : map['userNameAttributeField'] as String,
    );
  }
}
