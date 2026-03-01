// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sensor_integration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDataManagerForAgricultureResource.
class GetDataManagerForAgricultureResourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// Uri of the Data Manager For Agriculture instance.
  final String instanceUri;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Private endpoints.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Data Manager For Agriculture instance provisioning state.
  final String provisioningState;
  /// Property to allow or block public traffic for an Azure Data Manager For Agriculture resource.
  final String? publicNetworkAccess;
  /// Sensor integration request model.
  final SensorIntegrationResponse? sensorIntegration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetDataManagerForAgricultureResourceResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.instanceUri,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.sensorIntegration,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'instanceUri': instanceUri,
      'location': location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sensorIntegration': ?sensorIntegration == null ? null : sensorIntegration!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDataManagerForAgricultureResourceResult.fromMap(Map<String, dynamic> map) {
    return GetDataManagerForAgricultureResourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      instanceUri: map['instanceUri'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      sensorIntegration: map['sensorIntegration'] == null ? null : SensorIntegrationResponse.fromMap((map['sensorIntegration'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

