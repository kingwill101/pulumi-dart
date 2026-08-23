// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_properties_response.dart';
import 'fluid_relay_endpoints_response.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFluidRelayServer.
class GetFluidRelayServerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// All encryption configuration for a resource.
  final EncryptionPropertiesResponse? encryption;
  /// The Fluid Relay Service endpoints for this server.
  final FluidRelayEndpointsResponse fluidRelayEndpoints;
  /// The Fluid tenantId for this server
  final String frsTenantId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The type of identity used for the resource.
  final IdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provision states for FluidRelay RP
  final String? provisioningState;
  /// Sku of the storage associated with the resource
  final String? storagesku;
  /// System meta data for this resource, including creation and modification information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFluidRelayServerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryption] All encryption configuration for a resource.
  /// [fluidRelayEndpoints] The Fluid Relay Service endpoints for this server.
  /// [frsTenantId] The Fluid tenantId for this server
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The type of identity used for the resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provision states for FluidRelay RP
  /// [storagesku] Sku of the storage associated with the resource
  /// [systemData] System meta data for this resource, including creation and modification information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFluidRelayServerResult({
    required this.azureApiVersion,
    this.encryption,
    required this.fluidRelayEndpoints,
    required this.frsTenantId,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.provisioningState,
    this.storagesku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'encryption': ?encryption?.toMap(),
      'fluidRelayEndpoints': fluidRelayEndpoints.toMap(),
      'frsTenantId': frsTenantId,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'provisioningState': ?provisioningState,
      'storagesku': ?storagesku,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetFluidRelayServerResult.fromMap(Map<String, dynamic> map) {
    return GetFluidRelayServerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fluidRelayEndpoints: FluidRelayEndpointsResponse.fromMap((map['fluidRelayEndpoints']! as Map).cast<String, dynamic>()),
      frsTenantId: map['frsTenantId'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storagesku: (() { final guardedValue = map['storagesku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
