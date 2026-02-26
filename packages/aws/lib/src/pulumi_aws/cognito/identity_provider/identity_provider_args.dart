// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IdentityProvider.
class IdentityProviderArgs {
  /// The map of attribute mapping of user pool attributes. [AttributeMapping in AWS API documentation](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-AttributeMapping)
  final Input<Map<String, String>>? attributeMapping;

  /// The list of identity providers.
  final Input<List<String>>? idpIdentifiers;

  /// The map of identity details, such as access token
  final Input<Map<String, String>> providerDetails;

  /// The provider name
  final Input<String> providerName;

  /// The provider type.  [See AWS API for valid values](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateIdentityProvider.html#CognitoUserPools-CreateIdentityProvider-request-ProviderType)
  final Input<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The user pool id
  final Input<String> userPoolId;

  IdentityProviderArgs({
    this.attributeMapping,
    this.idpIdentifiers,
    required this.providerDetails,
    required this.providerName,
    required this.providerType,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeMappingValue = attributeMapping;
    if (attributeMappingValue != null) {
      map['attributeMapping'] = attributeMappingValue;
    }
    final idpIdentifiersValue = idpIdentifiers;
    if (idpIdentifiersValue != null) {
      map['idpIdentifiers'] = idpIdentifiersValue;
    }
    map['providerDetails'] = providerDetails;
    map['providerName'] = providerName;
    map['providerType'] = providerType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory IdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return IdentityProviderArgs(
      attributeMapping:
          Input.asOptionalInput<Map<String, String>>(map['attributeMapping']),
      idpIdentifiers:
          Input.asOptionalInput<List<String>>(map['idpIdentifiers']),
      providerDetails:
          Input.asInput<Map<String, String>>(map['providerDetails']),
      providerName: Input.asInput<String>(map['providerName']),
      providerType: Input.asInput<String>(map['providerType']),
      region: Input.asOptionalInput<String>(map['region']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
