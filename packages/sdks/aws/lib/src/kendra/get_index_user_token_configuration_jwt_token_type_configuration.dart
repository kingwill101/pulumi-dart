// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexUserTokenConfigurationJwtTokenTypeConfiguration {
  /// Regular expression that identifies the claim.
  final pulumi.Input<String> claimRegex;

  /// The group attribute field.
  final pulumi.Input<String> groupAttributeField;

  /// Issuer of the token.
  final pulumi.Input<String> issuer;

  /// Location of the key. Valid values are `URL` or `SECRET_MANAGER`
  final pulumi.Input<String> keyLocation;

  /// ARN of the secret.
  final pulumi.Input<String> secretsManagerArn;

  /// Signing key URL.
  final pulumi.Input<String> url;

  /// The user name attribute field.
  final pulumi.Input<String> userNameAttributeField;

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
    return <String, dynamic>{
      'claimRegex': claimRegex,
      'groupAttributeField': groupAttributeField,
      'issuer': issuer,
      'keyLocation': keyLocation,
      'secretsManagerArn': secretsManagerArn,
      'url': url,
      'userNameAttributeField': userNameAttributeField,
    };
  }

  factory GetIndexUserTokenConfigurationJwtTokenTypeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIndexUserTokenConfigurationJwtTokenTypeConfiguration(
      claimRegex: pulumi.Input.fromValue(map['claimRegex'] as String),
      groupAttributeField: pulumi.Input.fromValue(
        map['groupAttributeField'] as String,
      ),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      keyLocation: pulumi.Input.fromValue(map['keyLocation'] as String),
      secretsManagerArn: pulumi.Input.fromValue(
        map['secretsManagerArn'] as String,
      ),
      url: pulumi.Input.fromValue(map['url'] as String),
      userNameAttributeField: pulumi.Input.fromValue(
        map['userNameAttributeField'] as String,
      ),
    );
  }
}
