// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_pool_cognito_identity_provider.dart';

/// Input properties used for looking up and filtering IdentityPool resources.
class IdentityPoolState {
  /// Enables or disables the classic / basic authentication flow. Default is `false`.
  final pulumi.Input<bool>? allowClassicFlow;
  /// Whether the identity pool supports unauthenticated logins or not.
  final pulumi.Input<bool>? allowUnauthenticatedIdentities;
  /// The ARN of the identity pool.
  final pulumi.Input<String>? arn;
  /// An array of Amazon Cognito Identity user pools and their client IDs.
  final pulumi.Input<List<IdentityPoolCognitoIdentityProvider>>? cognitoIdentityProviders;
  /// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// backend and the Cognito service to communicate about the developer provider.
  final pulumi.Input<String>? developerProviderName;
  /// The Cognito Identity Pool name.
  final pulumi.Input<String>? identityPoolName;
  /// Set of OpendID Connect provider ARNs.
  final pulumi.Input<List<String>>? openidConnectProviderArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
  final pulumi.Input<List<String>>? samlProviderArns;
  /// Key-Value pairs mapping provider names to provider app IDs.
  final pulumi.Input<Map<String, String>>? supportedLoginProviders;
  /// A map of tags to assign to the Identity Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IdentityPoolState].
  /// [allowClassicFlow] Enables or disables the classic / basic authentication flow. Default is `false`.
  /// [allowUnauthenticatedIdentities] Whether the identity pool supports unauthenticated logins or not.
  /// [arn] The ARN of the identity pool.
  /// [cognitoIdentityProviders] An array of Amazon Cognito Identity user pools and their client IDs.
  /// [developerProviderName] The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// [identityPoolName] The Cognito Identity Pool name.
  /// [openidConnectProviderArns] Set of OpendID Connect provider ARNs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlProviderArns] An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
  /// [supportedLoginProviders] Key-Value pairs mapping provider names to provider app IDs.
  /// [tags] A map of tags to assign to the Identity Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  IdentityPoolState({
    this.allowClassicFlow,
    this.allowUnauthenticatedIdentities,
    this.arn,
    this.cognitoIdentityProviders,
    this.developerProviderName,
    this.identityPoolName,
    this.openidConnectProviderArns,
    this.region,
    this.samlProviderArns,
    this.supportedLoginProviders,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClassicFlow': ?allowClassicFlow,
      'allowUnauthenticatedIdentities': ?allowUnauthenticatedIdentities,
      'arn': ?arn,
      'cognitoIdentityProviders': ?pulumi.Input.mapOptionalInputValue<List<IdentityPoolCognitoIdentityProvider>, List<Map<String, dynamic>>>(cognitoIdentityProviders, (value) => pulumi.Input.encodeList<IdentityPoolCognitoIdentityProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'developerProviderName': ?developerProviderName,
      'identityPoolName': ?identityPoolName,
      'openidConnectProviderArns': ?openidConnectProviderArns,
      'region': ?region,
      'samlProviderArns': ?samlProviderArns,
      'supportedLoginProviders': ?supportedLoginProviders,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IdentityPoolState.fromMap(Map<String, dynamic> map) {
    return IdentityPoolState(
      allowClassicFlow: map['allowClassicFlow'] == null ? null : ((map['allowClassicFlow'] as bool).input()).input(),
      allowUnauthenticatedIdentities: map['allowUnauthenticatedIdentities'] == null ? null : ((map['allowUnauthenticatedIdentities'] as bool).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      cognitoIdentityProviders: map['cognitoIdentityProviders'] == null ? null : ((pulumi.Input.decodeList<IdentityPoolCognitoIdentityProvider>(map['cognitoIdentityProviders']!, (value) => IdentityPoolCognitoIdentityProvider.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      developerProviderName: map['developerProviderName'] == null ? null : ((map['developerProviderName'] as String).input()).input(),
      identityPoolName: map['identityPoolName'] == null ? null : ((map['identityPoolName'] as String).input()).input(),
      openidConnectProviderArns: map['openidConnectProviderArns'] == null ? null : (((map['openidConnectProviderArns'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      samlProviderArns: map['samlProviderArns'] == null ? null : (((map['samlProviderArns'] as List).cast<String>()).input()).input(),
      supportedLoginProviders: map['supportedLoginProviders'] == null ? null : (((map['supportedLoginProviders'] as Map).cast<String, String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

