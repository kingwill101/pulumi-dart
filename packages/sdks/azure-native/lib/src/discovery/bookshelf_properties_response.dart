// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bookshelf_key_vault_properties_response.dart';
import 'private_endpoint_connection_response.dart';
import 'user_assigned_identity_response.dart';
import 'with_mobo_broker_resources_response.dart';

/// Bookshelf properties
class BookshelfPropertiesResponse {
  /// The bookshelf data plane API URI
  final pulumi.Input<String> bookshelfUri;
  /// Whether or not to use a customer managed key when encrypting data at rest
  final pulumi.Input<String?>? customerManagedKeys;
  /// The key to use for encrypting data at rest when customer managed keys are enabled. Required if Customer Managed Keys is enabled.
  final pulumi.Input<BookshelfKeyVaultPropertiesResponse?>? keyVaultProperties;
  /// The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  final pulumi.Input<String?>? logAnalyticsClusterId;
  /// Managed-On-Behalf-Of configuration properties. This configuration exists for the resources where a resource provider manages those resources on behalf of the resource owner.
  final pulumi.Input<WithMoboBrokerResourcesResponse> managedOnBehalfOfConfiguration;
  /// The resource group for resources managed on behalf of customer.
  final pulumi.Input<String> managedResourceGroup;
  /// List of private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Private Endpoint Subnet ID for private endpoint connections.
  final pulumi.Input<String?>? privateEndpointSubnetId;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Whether or not public network access is allowed for this resource. For security reasons, it is recommended to disable it whenever possible.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// Search Subnet ID for search resources.
  final pulumi.Input<String?>? searchSubnetId;
  /// User assigned identity IDs to be used by knowledgebase workloads. The key value must be the resource ID of the identity resource.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>?>? workloadIdentities;

  /// Creates a new [BookshelfPropertiesResponse].
  /// [bookshelfUri] The bookshelf data plane API URI
  /// [customerManagedKeys] Whether or not to use a customer managed key when encrypting data at rest
  /// [keyVaultProperties] The key to use for encrypting data at rest when customer managed keys are enabled. Required if Customer Managed Keys is enabled.
  /// [logAnalyticsClusterId] The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  /// [managedOnBehalfOfConfiguration] Managed-On-Behalf-Of configuration properties. This configuration exists for the resources where a resource provider manages those resources on behalf of the resource owner.
  /// [managedResourceGroup] The resource group for resources managed on behalf of customer.
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [privateEndpointSubnetId] Private Endpoint Subnet ID for private endpoint connections.
  /// [provisioningState] The status of the last operation.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this resource. For security reasons, it is recommended to disable it whenever possible.
  /// [searchSubnetId] Search Subnet ID for search resources.
  /// [workloadIdentities] User assigned identity IDs to be used by knowledgebase workloads. The key value must be the resource ID of the identity resource.
  const BookshelfPropertiesResponse({
    required this.bookshelfUri,
    this.customerManagedKeys,
    this.keyVaultProperties,
    this.logAnalyticsClusterId,
    required this.managedOnBehalfOfConfiguration,
    required this.managedResourceGroup,
    required this.privateEndpointConnections,
    this.privateEndpointSubnetId,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.searchSubnetId,
    this.workloadIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookshelfUri': bookshelfUri,
      'customerManagedKeys': ?customerManagedKeys,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<BookshelfKeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'logAnalyticsClusterId': ?logAnalyticsClusterId,
      'managedOnBehalfOfConfiguration': pulumi.Input.mapInputValue<WithMoboBrokerResourcesResponse, Map<String, dynamic>>(managedOnBehalfOfConfiguration, (value) => value.toMap()),
      'managedResourceGroup': managedResourceGroup,
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpointSubnetId': ?privateEndpointSubnetId,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'searchSubnetId': ?searchSubnetId,
      'workloadIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(workloadIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BookshelfPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BookshelfPropertiesResponse(
      bookshelfUri: pulumi.Input.fromValue(map['bookshelfUri'] as String),
      customerManagedKeys: (() { final guardedValue = map['customerManagedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BookshelfKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsClusterId: (() { final guardedValue = map['logAnalyticsClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedOnBehalfOfConfiguration: pulumi.Input.fromValue(WithMoboBrokerResourcesResponse.fromMap((map['managedOnBehalfOfConfiguration']! as Map).cast<String, dynamic>())),
      managedResourceGroup: pulumi.Input.fromValue(map['managedResourceGroup'] as String),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateEndpointSubnetId: (() { final guardedValue = map['privateEndpointSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchSubnetId: (() { final guardedValue = map['searchSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentities: (() { final guardedValue = map['workloadIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
