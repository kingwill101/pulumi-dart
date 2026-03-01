// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityProvider resources.
class IdentityProviderState {
  /// The map of attribute mapping of user pool attributes. [AttributeMapping in AWS API documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-AttributeMapping)
  final pulumi.Input<Map<String, String>>? attributeMapping;
  /// The list of identity providers.
  final pulumi.Input<List<String>>? idpIdentifiers;
  /// The map of identity details, such as access token
  final pulumi.Input<Map<String, String>>? providerDetails;
  /// The provider name
  final pulumi.Input<String>? providerName;
  /// The provider type.  [See AWS API for valid values](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-ProviderType)
  final pulumi.Input<String>? providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The user pool id
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [IdentityProviderState].
  /// [attributeMapping] The map of attribute mapping of user pool attributes. [AttributeMapping in AWS API documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-AttributeMapping)
  /// [idpIdentifiers] The list of identity providers.
  /// [providerDetails] The map of identity details, such as access token
  /// [providerName] The provider name
  /// [providerType] The provider type.  [See AWS API for valid values](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-ProviderType)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool id
  IdentityProviderState({
    pulumi.Output<Map<String, String>>? attributeMapping,
    pulumi.Output<List<String>>? idpIdentifiers,
    pulumi.Output<Map<String, String>>? providerDetails,
    pulumi.Output<String>? providerName,
    pulumi.Output<String>? providerType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userPoolId,
  }) :
      attributeMapping = pulumi.Input.asOptionalInput<Map<String, String>>(attributeMapping),
      idpIdentifiers = pulumi.Input.asOptionalInput<List<String>>(idpIdentifiers),
      providerDetails = pulumi.Input.asOptionalInput<Map<String, String>>(providerDetails),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      providerType = pulumi.Input.asOptionalInput<String>(providerType),
      region = pulumi.Input.asOptionalInput<String>(region),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeMapping': ?attributeMapping,
      'idpIdentifiers': ?idpIdentifiers,
      'providerDetails': ?providerDetails,
      'providerName': ?providerName,
      'providerType': ?providerType,
      'region': ?region,
      'userPoolId': ?userPoolId,
    };
  }

  factory IdentityProviderState.fromMap(Map<String, dynamic> map) {
    return IdentityProviderState(
      attributeMapping: map['attributeMapping'] == null ? null : pulumi.Output.create<Map<String, String>>((map['attributeMapping'] as Map).cast<String, String>()),
      idpIdentifiers: map['idpIdentifiers'] == null ? null : pulumi.Output.create<List<String>>((map['idpIdentifiers'] as List).cast<String>()),
      providerDetails: map['providerDetails'] == null ? null : pulumi.Output.create<Map<String, String>>((map['providerDetails'] as Map).cast<String, String>()),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
      providerType: map['providerType'] == null ? null : pulumi.Output.create<String>(map['providerType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
    );
  }
}

