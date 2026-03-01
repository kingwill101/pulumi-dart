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
    pulumi.Output<String>? identityProviderArn,
    pulumi.Output<Map<String, String>>? identityProviderDetails,
    pulumi.Output<String>? identityProviderName,
    pulumi.Output<String>? identityProviderType,
    pulumi.Output<String>? portalArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      identityProviderArn = pulumi.Input.asOptionalInput<String>(identityProviderArn),
      identityProviderDetails = pulumi.Input.asOptionalInput<Map<String, String>>(identityProviderDetails),
      identityProviderName = pulumi.Input.asOptionalInput<String>(identityProviderName),
      identityProviderType = pulumi.Input.asOptionalInput<String>(identityProviderType),
      portalArn = pulumi.Input.asOptionalInput<String>(portalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      identityProviderArn: map['identityProviderArn'] == null ? null : pulumi.Output.create<String>(map['identityProviderArn'] as String),
      identityProviderDetails: map['identityProviderDetails'] == null ? null : pulumi.Output.create<Map<String, String>>((map['identityProviderDetails'] as Map).cast<String, String>()),
      identityProviderName: map['identityProviderName'] == null ? null : pulumi.Output.create<String>(map['identityProviderName'] as String),
      identityProviderType: map['identityProviderType'] == null ? null : pulumi.Output.create<String>(map['identityProviderType'] as String),
      portalArn: map['portalArn'] == null ? null : pulumi.Output.create<String>(map['portalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

