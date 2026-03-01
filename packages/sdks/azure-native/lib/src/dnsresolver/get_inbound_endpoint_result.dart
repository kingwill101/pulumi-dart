// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInboundEndpoint.
class GetInboundEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ETag of the inbound endpoint.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// IP configurations for the inbound endpoint.
  final List<IpConfigurationResponse> ipConfigurations;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The current provisioning state of the inbound endpoint. This is a read-only property and any attempt to set this value will be ignored.
  final String provisioningState;
  /// The resourceGuid property of the inbound endpoint resource.
  final String resourceGuid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetInboundEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] ETag of the inbound endpoint.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ipConfigurations] IP configurations for the inbound endpoint.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The current provisioning state of the inbound endpoint. This is a read-only property and any attempt to set this value will be ignored.
  /// [resourceGuid] The resourceGuid property of the inbound endpoint resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetInboundEndpointResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.ipConfigurations,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'ipConfigurations': pulumi.Input.encodeList<IpConfigurationResponse, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetInboundEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetInboundEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      ipConfigurations: pulumi.Input.decodeList<IpConfigurationResponse>(map['ipConfigurations'], (value) => IpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

