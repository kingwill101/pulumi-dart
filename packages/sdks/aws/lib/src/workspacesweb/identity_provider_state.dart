// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityProvider resources.
class IdentityProviderState {
  /// ARN of the identity provider.
  final pulumi.Input<String>? identityProviderArn;
  /// Identity provider details. The following list describes the provider detail keys for each identity provider type:
  /// * For Google and Login with Amazon:
  final pulumi.Input<Map<String, String>>? identityProviderDetails;
  /// Identity provider name.
  final pulumi.Input<String>? identityProviderName;
  /// Identity provider type. Valid values: `SAML`, `Facebook`, `Google`, `LoginWithAmazon`, `SignInWithApple`, `OIDC`.
  final pulumi.Input<String>? identityProviderType;
  /// ARN of the web portal. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IdentityProviderState].
  /// [identityProviderArn] ARN of the identity provider.
  /// [identityProviderDetails] Identity provider details. The following list describes the provider detail keys for each identity provider type:
  /// [identityProviderName] Identity provider name.
  /// [identityProviderType] Identity provider type. Valid values: `SAML`, `Facebook`, `Google`, `LoginWithAmazon`, `SignInWithApple`, `OIDC`.
  /// [portalArn] ARN of the web portal. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  IdentityProviderState({
    this.identityProviderArn,
    this.identityProviderDetails,
    this.identityProviderName,
    this.identityProviderType,
    this.portalArn,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderArn': ?identityProviderArn,
      'identityProviderDetails': ?identityProviderDetails,
      'identityProviderName': ?identityProviderName,
      'identityProviderType': ?identityProviderType,
      'portalArn': ?portalArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IdentityProviderState.fromMap(Map<String, dynamic> map) {
    return IdentityProviderState(
      identityProviderArn: map['identityProviderArn'] == null ? null : ((map['identityProviderArn'] as String).input()).input(),
      identityProviderDetails: map['identityProviderDetails'] == null ? null : (((map['identityProviderDetails'] as Map).cast<String, String>()).input()).input(),
      identityProviderName: map['identityProviderName'] == null ? null : ((map['identityProviderName'] as String).input()).input(),
      identityProviderType: map['identityProviderType'] == null ? null : ((map['identityProviderType'] as String).input()).input(),
      portalArn: map['portalArn'] == null ? null : ((map['portalArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

