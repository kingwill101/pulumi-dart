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
    pulumi.Output<bool>? allowClassicFlow,
    pulumi.Output<bool>? allowUnauthenticatedIdentities,
    pulumi.Output<String>? arn,
    pulumi.Output<List<IdentityPoolCognitoIdentityProvider>>? cognitoIdentityProviders,
    pulumi.Output<String>? developerProviderName,
    pulumi.Output<String>? identityPoolName,
    pulumi.Output<List<String>>? openidConnectProviderArns,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? samlProviderArns,
    pulumi.Output<Map<String, String>>? supportedLoginProviders,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      allowClassicFlow = pulumi.Input.asOptionalInput<bool>(allowClassicFlow),
      allowUnauthenticatedIdentities = pulumi.Input.asOptionalInput<bool>(allowUnauthenticatedIdentities),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cognitoIdentityProviders = pulumi.Input.asOptionalInput<List<IdentityPoolCognitoIdentityProvider>>(cognitoIdentityProviders),
      developerProviderName = pulumi.Input.asOptionalInput<String>(developerProviderName),
      identityPoolName = pulumi.Input.asOptionalInput<String>(identityPoolName),
      openidConnectProviderArns = pulumi.Input.asOptionalInput<List<String>>(openidConnectProviderArns),
      region = pulumi.Input.asOptionalInput<String>(region),
      samlProviderArns = pulumi.Input.asOptionalInput<List<String>>(samlProviderArns),
      supportedLoginProviders = pulumi.Input.asOptionalInput<Map<String, String>>(supportedLoginProviders),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      allowClassicFlow: map['allowClassicFlow'] == null ? null : pulumi.Output.create<bool>(map['allowClassicFlow'] as bool),
      allowUnauthenticatedIdentities: map['allowUnauthenticatedIdentities'] == null ? null : pulumi.Output.create<bool>(map['allowUnauthenticatedIdentities'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cognitoIdentityProviders: map['cognitoIdentityProviders'] == null ? null : pulumi.Output.create<List<IdentityPoolCognitoIdentityProvider>>(pulumi.Input.decodeList<IdentityPoolCognitoIdentityProvider>(map['cognitoIdentityProviders'], (value) => IdentityPoolCognitoIdentityProvider.fromMap((value as Map).cast<String, dynamic>()))),
      developerProviderName: map['developerProviderName'] == null ? null : pulumi.Output.create<String>(map['developerProviderName'] as String),
      identityPoolName: map['identityPoolName'] == null ? null : pulumi.Output.create<String>(map['identityPoolName'] as String),
      openidConnectProviderArns: map['openidConnectProviderArns'] == null ? null : pulumi.Output.create<List<String>>((map['openidConnectProviderArns'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      samlProviderArns: map['samlProviderArns'] == null ? null : pulumi.Output.create<List<String>>((map['samlProviderArns'] as List).cast<String>()),
      supportedLoginProviders: map['supportedLoginProviders'] == null ? null : pulumi.Output.create<Map<String, String>>((map['supportedLoginProviders'] as Map).cast<String, String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

