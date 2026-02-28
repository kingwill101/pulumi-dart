// ignore_for_file: unused_element, unnecessary_cast

class GetIndexUserTokenConfigurationJwtTokenTypeConfiguration {
  /// Regular expression that identifies the claim.
  final String claimRegex;

  /// The group attribute field.
  final String groupAttributeField;

  /// Issuer of the token.
  final String issuer;

  /// Location of the key. Valid values are `URL` or `SECRET_MANAGER`
  final String keyLocation;

  /// ARN of the secret.
  final String secretsManagerArn;

  /// Signing key URL.
  final String url;

  /// The user name attribute field.
  final String userNameAttributeField;

  /// Creates a new [GetIndexUserTokenConfigurationJwtTokenTypeConfiguration].
  /// [claimRegex] Regular expression that identifies the claim.
  /// [groupAttributeField] The group attribute field.
  /// [issuer] Issuer of the token.
  /// [keyLocation] Location of the key. Valid values are `URL` or `SECRET_MANAGER`
  /// [secretsManagerArn] ARN of the secret.
  /// [url] Signing key URL.
  /// [userNameAttributeField] The user name attribute field.
  GetIndexUserTokenConfigurationJwtTokenTypeConfiguration({
    required this.claimRegex,
    required this.groupAttributeField,
    required this.issuer,
    required this.keyLocation,
    required this.secretsManagerArn,
    required this.url,
    required this.userNameAttributeField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['claimRegex'] = claimRegex;
    map['groupAttributeField'] = groupAttributeField;
    map['issuer'] = issuer;
    map['keyLocation'] = keyLocation;
    map['secretsManagerArn'] = secretsManagerArn;
    map['url'] = url;
    map['userNameAttributeField'] = userNameAttributeField;
    return map;
  }

  factory GetIndexUserTokenConfigurationJwtTokenTypeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetIndexUserTokenConfigurationJwtTokenTypeConfiguration(
      claimRegex: map['claimRegex'] as String,
      groupAttributeField: map['groupAttributeField'] as String,
      issuer: map['issuer'] as String,
      keyLocation: map['keyLocation'] as String,
      secretsManagerArn: map['secretsManagerArn'] as String,
      url: map['url'] as String,
      userNameAttributeField: map['userNameAttributeField'] as String,
    );
  }
}
