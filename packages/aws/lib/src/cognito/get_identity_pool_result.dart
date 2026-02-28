// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_identity_pool_cognito_identity_provider.dart';

/// Result data returned by getIdentityPool.
class GetIdentityPoolResult {
  /// Whether the classic / basic authentication flow is enabled.
  final bool allowClassicFlow;

  /// Whether the identity pool supports unauthenticated logins or not.
  final bool allowUnauthenticatedIdentities;

  /// ARN of the Pool.
  final String arn;

  /// An array of Amazon Cognito Identity user pools and their client IDs.
  final List<GetIdentityPoolCognitoIdentityProvider> cognitoIdentityProviders;

  /// The "domain" by which Cognito will refer to your users.
  final String developerProviderName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identityPoolName;

  /// Set of OpendID Connect provider ARNs.
  final List<String> openidConnectProviderArns;
  final String region;

  /// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
  final List<String> samlProviderArns;

  /// Key-Value pairs mapping provider names to provider app IDs.
  final Map<String, String> supportedLoginProviders;

  /// A map of tags to assigned to the Identity Pool.
  final Map<String, String> tags;

  /// Creates a new [GetIdentityPoolResult].
  /// [allowClassicFlow] Whether the classic / basic authentication flow is enabled.
  /// [allowUnauthenticatedIdentities] Whether the identity pool supports unauthenticated logins or not.
  /// [arn] ARN of the Pool.
  /// [cognitoIdentityProviders] An array of Amazon Cognito Identity user pools and their client IDs.
  /// [developerProviderName] The "domain" by which Cognito will refer to your users.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityPoolName] Required.
  /// [openidConnectProviderArns] Set of OpendID Connect provider ARNs.
  /// [region] Required.
  /// [samlProviderArns] An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
  /// [supportedLoginProviders] Key-Value pairs mapping provider names to provider app IDs.
  /// [tags] A map of tags to assigned to the Identity Pool.
  GetIdentityPoolResult({
    required this.allowClassicFlow,
    required this.allowUnauthenticatedIdentities,
    required this.arn,
    required this.cognitoIdentityProviders,
    required this.developerProviderName,
    required this.id,
    required this.identityPoolName,
    required this.openidConnectProviderArns,
    required this.region,
    required this.samlProviderArns,
    required this.supportedLoginProviders,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowClassicFlow'] = allowClassicFlow;
    map['allowUnauthenticatedIdentities'] = allowUnauthenticatedIdentities;
    map['arn'] = arn;
    map['cognitoIdentityProviders'] = pulumi.Input.encodeList<
            GetIdentityPoolCognitoIdentityProvider, Map<String, dynamic>>(
        cognitoIdentityProviders, (value) => value.toMap());
    map['developerProviderName'] = developerProviderName;
    map['id'] = id;
    map['identityPoolName'] = identityPoolName;
    map['openidConnectProviderArns'] = openidConnectProviderArns;
    map['region'] = region;
    map['samlProviderArns'] = samlProviderArns;
    map['supportedLoginProviders'] = supportedLoginProviders;
    map['tags'] = tags;
    return map;
  }

  factory GetIdentityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetIdentityPoolResult(
      allowClassicFlow: map['allowClassicFlow'] as bool,
      allowUnauthenticatedIdentities:
          map['allowUnauthenticatedIdentities'] as bool,
      arn: map['arn'] as String,
      cognitoIdentityProviders:
          pulumi.Input.decodeList<GetIdentityPoolCognitoIdentityProvider>(
              map['cognitoIdentityProviders'],
              (value) => GetIdentityPoolCognitoIdentityProvider.fromMap(
                  (value as Map).cast<String, dynamic>())),
      developerProviderName: map['developerProviderName'] as String,
      id: map['id'] as String,
      identityPoolName: map['identityPoolName'] as String,
      openidConnectProviderArns:
          (map['openidConnectProviderArns'] as List).cast<String>(),
      region: map['region'] as String,
      samlProviderArns: (map['samlProviderArns'] as List).cast<String>(),
      supportedLoginProviders:
          (map['supportedLoginProviders'] as Map).cast<String, String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
