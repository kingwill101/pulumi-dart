// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDnsResolver.
class GetDnsResolverResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The current status of the DNS resolver. This is a read-only property and any attempt to set this value will be ignored.
  final String dnsResolverState;
  /// ETag of the DNS resolver.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The current provisioning state of the DNS resolver. This is a read-only property and any attempt to set this value will be ignored.
  final String provisioningState;
  /// The resourceGuid property of the DNS resolver resource.
  final String resourceGuid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The reference to the virtual network. This cannot be changed after creation.
  final SubResourceResponse virtualNetwork;

  /// Creates a new [GetDnsResolverResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dnsResolverState] The current status of the DNS resolver. This is a read-only property and any attempt to set this value will be ignored.
  /// [etag] ETag of the DNS resolver.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The current provisioning state of the DNS resolver. This is a read-only property and any attempt to set this value will be ignored.
  /// [resourceGuid] The resourceGuid property of the DNS resolver resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualNetwork] The reference to the virtual network. This cannot be changed after creation.
  GetDnsResolverResult({
    required this.azureApiVersion,
    required this.dnsResolverState,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    this.tags,
    required this.type,
    required this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dnsResolverState': dnsResolverState,
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualNetwork': virtualNetwork.toMap(),
    };
  }

  factory GetDnsResolverResult.fromMap(Map<String, dynamic> map) {
    return GetDnsResolverResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dnsResolverState: map['dnsResolverState'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualNetwork: SubResourceResponse.fromMap((map['virtualNetwork']! as Map).cast<String, dynamic>()),
    );
  }
}

