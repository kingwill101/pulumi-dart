// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_hub_metadata_provider_authentication_response.dart';
import 'provider_hub_metadata_third_party_provider_authorization_response.dart';
import 'resource_provider_authorization_response.dart';

/// The provider hub metadata.
class ProviderRegistrationPropertiesProviderHubMetadataResponse {
  /// The direct RP role definition id.
  final String? directRpRoleDefinitionId;
  /// The global async operation resource type name.
  final String? globalAsyncOperationResourceTypeName;
  /// The provider authentication.
  final ProviderHubMetadataProviderAuthenticationResponse? providerAuthentication;
  /// The provider authorizations.
  final List<ResourceProviderAuthorizationResponse>? providerAuthorizations;
  /// The regional async operation resource type name.
  final String? regionalAsyncOperationResourceTypeName;
  /// The third party provider authorization.
  final ProviderHubMetadataThirdPartyProviderAuthorizationResponse? thirdPartyProviderAuthorization;

  /// Creates a new [ProviderRegistrationPropertiesProviderHubMetadataResponse].
  /// [directRpRoleDefinitionId] The direct RP role definition id.
  /// [globalAsyncOperationResourceTypeName] The global async operation resource type name.
  /// [providerAuthentication] The provider authentication.
  /// [providerAuthorizations] The provider authorizations.
  /// [regionalAsyncOperationResourceTypeName] The regional async operation resource type name.
  /// [thirdPartyProviderAuthorization] The third party provider authorization.
  ProviderRegistrationPropertiesProviderHubMetadataResponse({
    this.directRpRoleDefinitionId,
    this.globalAsyncOperationResourceTypeName,
    this.providerAuthentication,
    this.providerAuthorizations,
    this.regionalAsyncOperationResourceTypeName,
    this.thirdPartyProviderAuthorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directRpRoleDefinitionId': ?directRpRoleDefinitionId,
      'globalAsyncOperationResourceTypeName': ?globalAsyncOperationResourceTypeName,
      'providerAuthentication': ?providerAuthentication == null ? null : providerAuthentication!.toMap(),
      'providerAuthorizations': ?providerAuthorizations == null ? null : pulumi.Input.encodeList<ResourceProviderAuthorizationResponse, Map<String, dynamic>>(providerAuthorizations!, (value) => value.toMap()),
      'regionalAsyncOperationResourceTypeName': ?regionalAsyncOperationResourceTypeName,
      'thirdPartyProviderAuthorization': ?thirdPartyProviderAuthorization == null ? null : thirdPartyProviderAuthorization!.toMap(),
    };
  }

  factory ProviderRegistrationPropertiesProviderHubMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesProviderHubMetadataResponse(
      directRpRoleDefinitionId: map['directRpRoleDefinitionId'] == null ? null : map['directRpRoleDefinitionId'] as String,
      globalAsyncOperationResourceTypeName: map['globalAsyncOperationResourceTypeName'] == null ? null : map['globalAsyncOperationResourceTypeName'] as String,
      providerAuthentication: map['providerAuthentication'] == null ? null : ProviderHubMetadataProviderAuthenticationResponse.fromMap((map['providerAuthentication'] as Map).cast<String, dynamic>()),
      providerAuthorizations: map['providerAuthorizations'] == null ? null : pulumi.Input.decodeList<ResourceProviderAuthorizationResponse>(map['providerAuthorizations'], (value) => ResourceProviderAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())),
      regionalAsyncOperationResourceTypeName: map['regionalAsyncOperationResourceTypeName'] == null ? null : map['regionalAsyncOperationResourceTypeName'] as String,
      thirdPartyProviderAuthorization: map['thirdPartyProviderAuthorization'] == null ? null : ProviderHubMetadataThirdPartyProviderAuthorizationResponse.fromMap((map['thirdPartyProviderAuthorization'] as Map).cast<String, dynamic>()),
    );
  }
}

