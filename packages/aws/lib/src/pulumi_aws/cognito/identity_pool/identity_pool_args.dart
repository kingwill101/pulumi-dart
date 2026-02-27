// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../identity_pool_cognito_identity_provider/identity_pool_cognito_identity_provider.dart';

/// The set of arguments for IdentityPool.
class IdentityPoolArgs {
  /// Enables or disables the classic / basic authentication flow. Default is `false`.
  final Input<bool>? allowClassicFlow;

  /// Whether the identity pool supports unauthenticated logins or not.
  final Input<bool>? allowUnauthenticatedIdentities;

  /// An array of Amazon Cognito Identity user pools and their client IDs.
  final Input<List<IdentityPoolCognitoIdentityProvider>>?
      cognitoIdentityProviders;

  /// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// backend and the Cognito service to communicate about the developer provider.
  final Input<String>? developerProviderName;

  /// The Cognito Identity Pool name.
  final Input<String> identityPoolName;

  /// Set of OpendID Connect provider ARNs.
  final Input<List<String>>? openidConnectProviderArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
  final Input<List<String>>? samlProviderArns;

  /// Key-Value pairs mapping provider names to provider app IDs.
  final Input<Map<String, String>>? supportedLoginProviders;

  /// A map of tags to assign to the Identity Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  IdentityPoolArgs({
    this.allowClassicFlow,
    this.allowUnauthenticatedIdentities,
    this.cognitoIdentityProviders,
    this.developerProviderName,
    required this.identityPoolName,
    this.openidConnectProviderArns,
    this.region,
    this.samlProviderArns,
    this.supportedLoginProviders,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowClassicFlowValue = allowClassicFlow;
    if (allowClassicFlowValue != null) {
      map['allowClassicFlow'] = allowClassicFlowValue;
    }
    final allowUnauthenticatedIdentitiesValue = allowUnauthenticatedIdentities;
    if (allowUnauthenticatedIdentitiesValue != null) {
      map['allowUnauthenticatedIdentities'] =
          allowUnauthenticatedIdentitiesValue;
    }
    final cognitoIdentityProvidersValue = cognitoIdentityProviders;
    if (cognitoIdentityProvidersValue != null) {
      map['cognitoIdentityProviders'] = Input.mapOptionalInputValue<
              List<IdentityPoolCognitoIdentityProvider>,
              List<Map<String, dynamic>>>(
          cognitoIdentityProvidersValue,
          (value) => Input.encodeList<IdentityPoolCognitoIdentityProvider,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final developerProviderNameValue = developerProviderName;
    if (developerProviderNameValue != null) {
      map['developerProviderName'] = developerProviderNameValue;
    }
    map['identityPoolName'] = identityPoolName;
    final openidConnectProviderArnsValue = openidConnectProviderArns;
    if (openidConnectProviderArnsValue != null) {
      map['openidConnectProviderArns'] = openidConnectProviderArnsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final samlProviderArnsValue = samlProviderArns;
    if (samlProviderArnsValue != null) {
      map['samlProviderArns'] = samlProviderArnsValue;
    }
    final supportedLoginProvidersValue = supportedLoginProviders;
    if (supportedLoginProvidersValue != null) {
      map['supportedLoginProviders'] = supportedLoginProvidersValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory IdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return IdentityPoolArgs(
      allowClassicFlow: Input.asOptionalInput<bool>(map['allowClassicFlow']),
      allowUnauthenticatedIdentities:
          Input.asOptionalInput<bool>(map['allowUnauthenticatedIdentities']),
      cognitoIdentityProviders:
          Input.asOptionalInput<List<IdentityPoolCognitoIdentityProvider>>(
              map['cognitoIdentityProviders']),
      developerProviderName:
          Input.asOptionalInput<String>(map['developerProviderName']),
      identityPoolName: Input.asInput<String>(map['identityPoolName']),
      openidConnectProviderArns:
          Input.asOptionalInput<List<String>>(map['openidConnectProviderArns']),
      region: Input.asOptionalInput<String>(map['region']),
      samlProviderArns:
          Input.asOptionalInput<List<String>>(map['samlProviderArns']),
      supportedLoginProviders: Input.asOptionalInput<Map<String, String>>(
          map['supportedLoginProviders']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
