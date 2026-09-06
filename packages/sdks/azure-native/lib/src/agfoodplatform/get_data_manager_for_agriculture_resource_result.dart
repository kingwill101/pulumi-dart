// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sensor_integration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDataManagerForAgricultureResource.
class GetDataManagerForAgricultureResourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// Uri of the Data Manager For Agriculture instance.
  final String? instanceUri;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Private endpoints.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Data Manager For Agriculture instance provisioning state.
  final String? provisioningState;
  /// Property to allow or block public traffic for an Azure Data Manager For Agriculture resource.
  final String? publicNetworkAccess;
  /// Sensor integration request model.
  final SensorIntegrationResponse? sensorIntegration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDataManagerForAgricultureResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Identity for the resource.
  /// [instanceUri] Uri of the Data Manager For Agriculture instance.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] Private endpoints.
  /// [provisioningState] Data Manager For Agriculture instance provisioning state.
  /// [publicNetworkAccess] Property to allow or block public traffic for an Azure Data Manager For Agriculture resource.
  /// [sensorIntegration] Sensor integration request model.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDataManagerForAgricultureResourceResult({
    this.azureApiVersion,
    this.id,
    this.identity,
    this.instanceUri,
    this.location,
    this.name,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    this.sensorIntegration,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'instanceUri': ?instanceUri,
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sensorIntegration': ?sensorIntegration?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDataManagerForAgricultureResourceResult.fromMap(Map<String, dynamic> map) {
    return GetDataManagerForAgricultureResourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceUri: (() { final guardedValue = map['instanceUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sensorIntegration: (() { final guardedValue = map['sensorIntegration']; if (guardedValue == null) return null; return SensorIntegrationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
