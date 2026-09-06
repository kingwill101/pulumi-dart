// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInboundEndpoint.
class GetInboundEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// ETag of the inbound endpoint.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// IP configurations for the inbound endpoint.
  final List<IpConfigurationResponse>? ipConfigurations;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The current provisioning state of the inbound endpoint. This is a read-only property and any attempt to set this value will be ignored.
  final String? provisioningState;
  /// The resourceGuid property of the inbound endpoint resource.
  final String? resourceGuid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetInboundEndpointResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.ipConfigurations,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<IpConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetInboundEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetInboundEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpConfigurationResponse>(guardedValue, (value) => IpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
