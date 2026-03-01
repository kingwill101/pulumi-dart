// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_identity_provider_identity_provider_args_doc}
/// The set of arguments for IdentityProvider.
/// {@endtemplate}
/// {@macro pulumi_cognito_identity_provider_identity_provider_args_doc}
class IdentityProviderArgs {
  /// The map of attribute mapping of user pool attributes. [AttributeMapping in AWS API documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-AttributeMapping)
  final pulumi.Input<Map<String, String>>? attributeMapping;

  /// The list of identity providers.
  final pulumi.Input<List<String>>? idpIdentifiers;

  /// The map of identity details, such as access token
  final pulumi.Input<Map<String, String>> providerDetails;

  /// The provider name
  final pulumi.Input<String> providerName;

  /// The provider type.  [See AWS API for valid values](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-ProviderType)
  final pulumi.Input<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The user pool id
  final pulumi.Input<String> userPoolId;

  /// Creates a new [IdentityProviderArgs].
  /// [attributeMapping] The map of attribute mapping of user pool attributes. [AttributeMapping in AWS API documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-AttributeMapping)
  /// [idpIdentifiers] The list of identity providers.
  /// [providerDetails] The map of identity details, such as access token
  /// [providerName] The provider name
  /// [providerType] The provider type.  [See AWS API for valid values](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-ProviderType)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool id
  IdentityProviderArgs({
    Map<String, String>? attributeMapping,
    List<String>? idpIdentifiers,
    required Map<String, String> providerDetails,
    required String providerName,
    required String providerType,
    String? region,
    required String userPoolId,
  }) : attributeMapping = pulumi.Input.asOptionalInput<Map<String, String>>(
         attributeMapping,
       ),
       idpIdentifiers = pulumi.Input.asOptionalInput<List<String>>(
         idpIdentifiers,
       ),
       providerDetails = pulumi.Input.asInput<Map<String, String>>(
         providerDetails,
       ),
       providerName = pulumi.Input.asInput<String>(providerName),
       providerType = pulumi.Input.asInput<String>(providerType),
       region = pulumi.Input.asOptionalInput<String>(region),
       userPoolId = pulumi.Input.asInput<String>(userPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeMapping': ?attributeMapping,
      'idpIdentifiers': ?idpIdentifiers,
      'providerDetails': providerDetails,
      'providerName': providerName,
      'providerType': providerType,
      'region': ?region,
      'userPoolId': userPoolId,
    };
  }

  factory IdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderArgs(
      attributeMapping: map['attributeMapping'] == null
          ? null
          : (map['attributeMapping'] as Map).cast<String, String>(),
      idpIdentifiers: map['idpIdentifiers'] == null
          ? null
          : (map['idpIdentifiers'] as List).cast<String>(),
      providerDetails: (map['providerDetails'] as Map).cast<String, String>(),
      providerName: map['providerName'] as String,
      providerType: map['providerType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
