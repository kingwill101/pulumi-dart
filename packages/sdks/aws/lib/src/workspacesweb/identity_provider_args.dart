// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspacesweb_identity_provider_identity_provider_args_doc}
/// The set of arguments for IdentityProvider.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_identity_provider_identity_provider_args_doc}
class IdentityProviderArgs {
  /// Identity provider details. The following list describes the provider detail keys for each identity provider type:
  /// * For Google and Login with Amazon:
  final pulumi.Input<Map<String, String>> identityProviderDetails;
  /// Identity provider name.
  final pulumi.Input<String> identityProviderName;
  /// Identity provider type. Valid values: `SAML`, `Facebook`, `Google`, `LoginWithAmazon`, `SignInWithApple`, `OIDC`.
  final pulumi.Input<String> identityProviderType;
  /// ARN of the web portal. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IdentityProviderArgs].
  /// [identityProviderDetails] Identity provider details. The following list describes the provider detail keys for each identity provider type:
  /// [identityProviderName] Identity provider name.
  /// [identityProviderType] Identity provider type. Valid values: `SAML`, `Facebook`, `Google`, `LoginWithAmazon`, `SignInWithApple`, `OIDC`.
  /// [portalArn] ARN of the web portal. Forces replacement if changed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  IdentityProviderArgs({
    required this.identityProviderDetails,
    required this.identityProviderName,
    required this.identityProviderType,
    required this.portalArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderDetails': identityProviderDetails,
      'identityProviderName': identityProviderName,
      'identityProviderType': identityProviderType,
      'portalArn': portalArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory IdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderArgs(
      identityProviderDetails: ((map['identityProviderDetails'] as Map).cast<String, String>()).input(),
      identityProviderName: (map['identityProviderName'] as String).input(),
      identityProviderType: (map['identityProviderType'] as String).input(),
      portalArn: (map['portalArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

