// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for IdentityProvider.
class IdentityProviderWorkspaceswebArgs {
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

  IdentityProviderWorkspaceswebArgs({
    required this.identityProviderDetails,
    required this.identityProviderName,
    required this.identityProviderType,
    required this.portalArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityProviderDetails'] = identityProviderDetails;
    map['identityProviderName'] = identityProviderName;
    map['identityProviderType'] = identityProviderType;
    map['portalArn'] = portalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory IdentityProviderWorkspaceswebArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderWorkspaceswebArgs(
      identityProviderDetails: pulumi.Input.asInput<Map<String, String>>(
          map['identityProviderDetails']),
      identityProviderName:
          pulumi.Input.asInput<String>(map['identityProviderName']),
      identityProviderType:
          pulumi.Input.asInput<String>(map['identityProviderType']),
      portalArn: pulumi.Input.asInput<String>(map['portalArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
