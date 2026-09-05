// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_identity_pool_cognito_identity_provider.dart';

/// Result data returned by getIdentityPool.
class GetIdentityPoolResult {
  /// Whether the classic / basic authentication flow is enabled.
  final bool? allowClassicFlow;
  /// Whether the identity pool supports unauthenticated logins or not.
  final bool? allowUnauthenticatedIdentities;
  /// ARN of the Pool.
  final String? arn;
  /// An array of Amazon Cognito Identity user pools and their client IDs.
  final List<GetIdentityPoolCognitoIdentityProvider>? cognitoIdentityProviders;
  /// The "domain" by which Cognito will refer to your users.
  final String? developerProviderName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? identityPoolName;
  /// Set of OpendID Connect provider ARNs.
  final List<String>? openidConnectProviderArns;
  final String? region;
  /// Array of ARNs of the SAML provider for your identity.
  final List<String>? samlProviderArns;
  /// Key-Value pairs mapping provider names to provider app IDs.
  final Map<String, String>? supportedLoginProviders;
  /// A map of tags to assigned to the Identity Pool.
  final Map<String, String>? tags;

  /// Creates a new [GetIdentityPoolResult].
  /// [allowClassicFlow] Whether the classic / basic authentication flow is enabled.
  /// [allowUnauthenticatedIdentities] Whether the identity pool supports unauthenticated logins or not.
  /// [arn] ARN of the Pool.
  /// [cognitoIdentityProviders] An array of Amazon Cognito Identity user pools and their client IDs.
  /// [developerProviderName] The "domain" by which Cognito will refer to your users.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityPoolName] Optional.
  /// [openidConnectProviderArns] Set of OpendID Connect provider ARNs.
  /// [region] Optional.
  /// [samlProviderArns] Array of ARNs of the SAML provider for your identity.
  /// [supportedLoginProviders] Key-Value pairs mapping provider names to provider app IDs.
  /// [tags] A map of tags to assigned to the Identity Pool.
  const GetIdentityPoolResult({
    this.allowClassicFlow,
    this.allowUnauthenticatedIdentities,
    this.arn,
    this.cognitoIdentityProviders,
    this.developerProviderName,
    this.id,
    this.identityPoolName,
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
      'arn': ?arn,
      'cognitoIdentityProviders': ?(() { final guardedValue = cognitoIdentityProviders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIdentityPoolCognitoIdentityProvider, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'developerProviderName': ?developerProviderName,
      'id': ?id,
      'identityPoolName': ?identityPoolName,
      'openidConnectProviderArns': ?openidConnectProviderArns,
      'region': ?region,
      'samlProviderArns': ?samlProviderArns,
      'supportedLoginProviders': ?supportedLoginProviders,
      'tags': ?tags,
    };
  }

  factory GetIdentityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetIdentityPoolResult(
      allowClassicFlow: (() { final guardedValue = map['allowClassicFlow']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowUnauthenticatedIdentities: (() { final guardedValue = map['allowUnauthenticatedIdentities']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cognitoIdentityProviders: (() { final guardedValue = map['cognitoIdentityProviders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIdentityPoolCognitoIdentityProvider>(guardedValue, (value) => GetIdentityPoolCognitoIdentityProvider.fromMap((value as Map).cast<String, dynamic>())); })(),
      developerProviderName: (() { final guardedValue = map['developerProviderName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityPoolName: (() { final guardedValue = map['identityPoolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      openidConnectProviderArns: (() { final guardedValue = map['openidConnectProviderArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samlProviderArns: (() { final guardedValue = map['samlProviderArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedLoginProviders: (() { final guardedValue = map['supportedLoginProviders']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
