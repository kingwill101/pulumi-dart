// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_pool_cognito_identity_provider.dart';

/// {@template pulumi_cognito_identity_pool_identity_pool_args_doc}
/// The set of arguments for IdentityPool.
/// {@endtemplate}
/// {@macro pulumi_cognito_identity_pool_identity_pool_args_doc}
class IdentityPoolArgs {
  /// Enables or disables the classic / basic authentication flow. Default is `false`.
  final pulumi.Input<bool?>? allowClassicFlow;
  /// Whether the identity pool supports unauthenticated logins or not.
  final pulumi.Input<bool?>? allowUnauthenticatedIdentities;
  /// An array of Amazon Cognito Identity user pools and their client IDs.
  final pulumi.Input<List<IdentityPoolCognitoIdentityProvider>?>? cognitoIdentityProviders;
  /// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// backend and the Cognito service to communicate about the developer provider.
  final pulumi.Input<String?>? developerProviderName;
  /// The Cognito Identity Pool name.
  final pulumi.Input<String> identityPoolName;
  /// Set of OpendID Connect provider ARNs.
  final pulumi.Input<List<String>?>? openidConnectProviderArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// An array of ARNs of the SAML provider for your identity.
  final pulumi.Input<List<String>?>? samlProviderArns;
  /// Key-Value pairs mapping provider names to provider app IDs.
  final pulumi.Input<Map<String, String>?>? supportedLoginProviders;
  /// A map of tags to assign to the Identity Pool. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [IdentityPoolArgs].
  /// [allowClassicFlow] Enables or disables the classic / basic authentication flow. Default is `false`.
  /// [allowUnauthenticatedIdentities] Whether the identity pool supports unauthenticated logins or not.
  /// [cognitoIdentityProviders] An array of Amazon Cognito Identity user pools and their client IDs.
  /// [developerProviderName] The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// [identityPoolName] The Cognito Identity Pool name.
  /// [openidConnectProviderArns] Set of OpendID Connect provider ARNs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlProviderArns] An array of ARNs of the SAML provider for your identity.
  /// [supportedLoginProviders] Key-Value pairs mapping provider names to provider app IDs.
  /// [tags] A map of tags to assign to the Identity Pool. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const IdentityPoolArgs({
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
    return <String, dynamic>{
      'allowClassicFlow': ?allowClassicFlow,
      'allowUnauthenticatedIdentities': ?allowUnauthenticatedIdentities,
      'cognitoIdentityProviders': ?pulumi.Input.mapOptionalInputValue<List<IdentityPoolCognitoIdentityProvider>, List<Map<String, dynamic>>>(cognitoIdentityProviders, (value) => pulumi.Input.encodeList<IdentityPoolCognitoIdentityProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'developerProviderName': ?developerProviderName,
      'identityPoolName': identityPoolName,
      'openidConnectProviderArns': ?openidConnectProviderArns,
      'region': ?region,
      'samlProviderArns': ?samlProviderArns,
      'supportedLoginProviders': ?supportedLoginProviders,
      'tags': ?tags,
    };
  }

  factory IdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return IdentityPoolArgs(
      allowClassicFlow: (() { final guardedValue = map['allowClassicFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowUnauthenticatedIdentities: (() { final guardedValue = map['allowUnauthenticatedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cognitoIdentityProviders: (() { final guardedValue = map['cognitoIdentityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IdentityPoolCognitoIdentityProvider>(guardedValue, (value) => IdentityPoolCognitoIdentityProvider.fromMap((value as Map).cast<String, dynamic>()))); })(),
      developerProviderName: (() { final guardedValue = map['developerProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityPoolName: pulumi.Input.fromValue(map['identityPoolName'] as String),
      openidConnectProviderArns: (() { final guardedValue = map['openidConnectProviderArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlProviderArns: (() { final guardedValue = map['samlProviderArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedLoginProviders: (() { final guardedValue = map['supportedLoginProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
