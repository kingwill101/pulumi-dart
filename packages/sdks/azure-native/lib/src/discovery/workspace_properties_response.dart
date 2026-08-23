// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'key_vault_properties_response.dart';
import 'private_endpoint_connection_response.dart';
import 'with_mobo_broker_resources_response.dart';

/// Workspace properties
class WorkspacePropertiesResponse {
  /// Agent Subnet ID for agent resources.
  final pulumi.Input<String>? agentSubnetId;
  /// Whether or not to use a customer managed key when encrypting data at rest
  final pulumi.Input<String>? customerManagedKeys;
  /// The key to use for encrypting data at rest when customer managed keys are enabled.
  final pulumi.Input<KeyVaultPropertiesResponse>? keyVaultProperties;
  /// The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  final pulumi.Input<String>? logAnalyticsClusterId;
  /// Managed-On-Behalf-Of configuration properties. This configuration exists for the resources where a resource provider manages those resources on behalf of the resource owner.
  final pulumi.Input<WithMoboBrokerResourcesResponse> managedOnBehalfOfConfiguration;
  /// The resource group for resources managed on behalf of customer.
  final pulumi.Input<String> managedResourceGroup;
  /// List of private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Private Endpoint Subnet ID for private endpoint connections.
  final pulumi.Input<String>? privateEndpointSubnetId;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Whether or not public network access is allowed for this resource. For security reasons, it is recommended to disable it whenever possible.
  final pulumi.Input<String>? publicNetworkAccess;
  /// List of linked SuperComputers.
  final pulumi.Input<List<String>>? supercomputerIds;
  /// workspace API endpoint Uri.
  final pulumi.Input<String> workspaceApiUri;
  /// Identity IDs used for leveraging Workspace resources.
  final pulumi.Input<IdentityResponse> workspaceIdentity;
  /// Function Subnet ID for workspace resources.
  final pulumi.Input<String>? workspaceSubnetId;
  /// workspace User Interface Uri.
  final pulumi.Input<String> workspaceUiUri;

  /// Creates a new [WorkspacePropertiesResponse].
  /// [agentSubnetId] Agent Subnet ID for agent resources.
  /// [customerManagedKeys] Whether or not to use a customer managed key when encrypting data at rest
  /// [keyVaultProperties] The key to use for encrypting data at rest when customer managed keys are enabled.
  /// [logAnalyticsClusterId] The Log Analytics Cluster to use for debug logs. This is required when Customer Managed Keys are enabled.
  /// [managedOnBehalfOfConfiguration] Managed-On-Behalf-Of configuration properties. This configuration exists for the resources where a resource provider manages those resources on behalf of the resource owner.
  /// [managedResourceGroup] The resource group for resources managed on behalf of customer.
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [privateEndpointSubnetId] Private Endpoint Subnet ID for private endpoint connections.
  /// [provisioningState] The status of the last operation.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this resource. For security reasons, it is recommended to disable it whenever possible.
  /// [supercomputerIds] List of linked SuperComputers.
  /// [workspaceApiUri] workspace API endpoint Uri.
  /// [workspaceIdentity] Identity IDs used for leveraging Workspace resources.
  /// [workspaceSubnetId] Function Subnet ID for workspace resources.
  /// [workspaceUiUri] workspace User Interface Uri.
  const WorkspacePropertiesResponse({
    this.agentSubnetId,
    this.customerManagedKeys,
    this.keyVaultProperties,
    this.logAnalyticsClusterId,
    required this.managedOnBehalfOfConfiguration,
    required this.managedResourceGroup,
    required this.privateEndpointConnections,
    this.privateEndpointSubnetId,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.supercomputerIds,
    required this.workspaceApiUri,
    required this.workspaceIdentity,
    this.workspaceSubnetId,
    required this.workspaceUiUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSubnetId': ?agentSubnetId,
      'customerManagedKeys': ?customerManagedKeys,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'logAnalyticsClusterId': ?logAnalyticsClusterId,
      'managedOnBehalfOfConfiguration': pulumi.Input.mapInputValue<WithMoboBrokerResourcesResponse, Map<String, dynamic>>(managedOnBehalfOfConfiguration, (value) => value.toMap()),
      'managedResourceGroup': managedResourceGroup,
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpointSubnetId': ?privateEndpointSubnetId,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'supercomputerIds': ?supercomputerIds,
      'workspaceApiUri': workspaceApiUri,
      'workspaceIdentity': pulumi.Input.mapInputValue<IdentityResponse, Map<String, dynamic>>(workspaceIdentity, (value) => value.toMap()),
      'workspaceSubnetId': ?workspaceSubnetId,
      'workspaceUiUri': workspaceUiUri,
    };
  }

  factory WorkspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkspacePropertiesResponse(
      agentSubnetId: (() { final guardedValue = map['agentSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKeys: (() { final guardedValue = map['customerManagedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsClusterId: (() { final guardedValue = map['logAnalyticsClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedOnBehalfOfConfiguration: pulumi.Input.fromValue(WithMoboBrokerResourcesResponse.fromMap((map['managedOnBehalfOfConfiguration']! as Map).cast<String, dynamic>())),
      managedResourceGroup: pulumi.Input.fromValue(map['managedResourceGroup'] as String),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateEndpointSubnetId: (() { final guardedValue = map['privateEndpointSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supercomputerIds: (() { final guardedValue = map['supercomputerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workspaceApiUri: pulumi.Input.fromValue(map['workspaceApiUri'] as String),
      workspaceIdentity: pulumi.Input.fromValue(IdentityResponse.fromMap((map['workspaceIdentity']! as Map).cast<String, dynamic>())),
      workspaceSubnetId: (() { final guardedValue = map['workspaceSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceUiUri: pulumi.Input.fromValue(map['workspaceUiUri'] as String),
    );
  }
}
