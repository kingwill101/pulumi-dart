// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAttestationProvider.
class GetAttestationProviderResult {
  /// Gets the uri of attestation service
  final String? attestUri;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// List of private endpoint connections associated with the attestation provider.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Controls whether traffic from the public network is allowed to access the Attestation Provider APIs.
  final String? publicNetworkAccess;
  /// Status of attestation service.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
  final String? tpmAttestationAuthentication;
  /// Trust model for the attestation provider.
  final String? trustModel;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAttestationProviderResult].
  /// [attestUri] Gets the uri of attestation service
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections associated with the attestation provider.
  /// [publicNetworkAccess] Controls whether traffic from the public network is allowed to access the Attestation Provider APIs.
  /// [status] Status of attestation service.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tpmAttestationAuthentication] The setting that controls whether authentication is enabled or disabled for TPM Attestation REST APIs.
  /// [trustModel] Trust model for the attestation provider.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAttestationProviderResult({
    this.attestUri,
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    this.publicNetworkAccess,
    this.status,
    required this.systemData,
    this.tags,
    this.tpmAttestationAuthentication,
    this.trustModel,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestUri': ?attestUri,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'status': ?status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tpmAttestationAuthentication': ?tpmAttestationAuthentication,
      'trustModel': ?trustModel,
      'type': type,
    };
  }

  factory GetAttestationProviderResult.fromMap(Map<String, dynamic> map) {
    return GetAttestationProviderResult(
      attestUri: (() { final guardedValue = map['attestUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tpmAttestationAuthentication: (() { final guardedValue = map['tpmAttestationAuthentication']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustModel: (() { final guardedValue = map['trustModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

