// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_pool_cognito_identity_provider.dart';

/// {@template pulumi_cognito_identity_pool_identity_pool_args_doc}
/// The set of arguments for IdentityPool.
/// {@endtemplate}
/// {@macro pulumi_cognito_identity_pool_identity_pool_args_doc}
class IdentityPoolArgs {
  /// Enables or disables the classic / basic authentication flow. Default is `false`.
  final pulumi.Input<bool>? allowClassicFlow;

  /// Whether the identity pool supports unauthenticated logins or not.
  final pulumi.Input<bool>? allowUnauthenticatedIdentities;

  /// An array of Amazon Cognito Identity user pools and their client IDs.
  final pulumi.Input<List<IdentityPoolCognitoIdentityProvider>>?
  cognitoIdentityProviders;

  /// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// backend and the Cognito service to communicate about the developer provider.
  final pulumi.Input<String>? developerProviderName;

  /// The Cognito Identity Pool name.
  final pulumi.Input<String> identityPoolName;

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

  /// Creates a new [IdentityPoolArgs].
  /// [allowClassicFlow] Enables or disables the classic / basic authentication flow. Default is `false`.
  /// [allowUnauthenticatedIdentities] Whether the identity pool supports unauthenticated logins or not.
  /// [cognitoIdentityProviders] An array of Amazon Cognito Identity user pools and their client IDs.
  /// [developerProviderName] The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// [identityPoolName] The Cognito Identity Pool name.
  /// [openidConnectProviderArns] Set of OpendID Connect provider ARNs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlProviderArns] An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
  /// [supportedLoginProviders] Key-Value pairs mapping provider names to provider app IDs.
  /// [tags] A map of tags to assign to the Identity Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  IdentityPoolArgs({
    bool? allowClassicFlow,
    bool? allowUnauthenticatedIdentities,
    List<IdentityPoolCognitoIdentityProvider>? cognitoIdentityProviders,
    String? developerProviderName,
    required String identityPoolName,
    List<String>? openidConnectProviderArns,
    String? region,
    List<String>? samlProviderArns,
    Map<String, String>? supportedLoginProviders,
    Map<String, String>? tags,
  }) : allowClassicFlow = pulumi.Input.asOptionalInput<bool>(allowClassicFlow),
       allowUnauthenticatedIdentities = pulumi.Input.asOptionalInput<bool>(
         allowUnauthenticatedIdentities,
       ),
       cognitoIdentityProviders =
           pulumi.Input.asOptionalInput<
             List<IdentityPoolCognitoIdentityProvider>
           >(cognitoIdentityProviders),
       developerProviderName = pulumi.Input.asOptionalInput<String>(
         developerProviderName,
       ),
       identityPoolName = pulumi.Input.asInput<String>(identityPoolName),
       openidConnectProviderArns = pulumi.Input.asOptionalInput<List<String>>(
         openidConnectProviderArns,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       samlProviderArns = pulumi.Input.asOptionalInput<List<String>>(
         samlProviderArns,
       ),
       supportedLoginProviders = pulumi
           .Input.asOptionalInput<Map<String, String>>(supportedLoginProviders),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowClassicFlow': ?allowClassicFlow,
      'allowUnauthenticatedIdentities': ?allowUnauthenticatedIdentities,
      'cognitoIdentityProviders':
          ?pulumi.Input.mapOptionalInputValue<
            List<IdentityPoolCognitoIdentityProvider>,
            List<Map<String, dynamic>>
          >(
            cognitoIdentityProviders,
            (value) =>
                pulumi.Input.encodeList<
                  IdentityPoolCognitoIdentityProvider,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      allowClassicFlow: map['allowClassicFlow'] == null
          ? null
          : map['allowClassicFlow'] as bool,
      allowUnauthenticatedIdentities:
          map['allowUnauthenticatedIdentities'] == null
          ? null
          : map['allowUnauthenticatedIdentities'] as bool,
      cognitoIdentityProviders: map['cognitoIdentityProviders'] == null
          ? null
          : pulumi.Input.decodeList<IdentityPoolCognitoIdentityProvider>(
              map['cognitoIdentityProviders'],
              (value) => IdentityPoolCognitoIdentityProvider.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      developerProviderName: map['developerProviderName'] == null
          ? null
          : map['developerProviderName'] as String,
      identityPoolName: map['identityPoolName'] as String,
      openidConnectProviderArns: map['openidConnectProviderArns'] == null
          ? null
          : (map['openidConnectProviderArns'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      samlProviderArns: map['samlProviderArns'] == null
          ? null
          : (map['samlProviderArns'] as List).cast<String>(),
      supportedLoginProviders: map['supportedLoginProviders'] == null
          ? null
          : (map['supportedLoginProviders'] as Map).cast<String, String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
