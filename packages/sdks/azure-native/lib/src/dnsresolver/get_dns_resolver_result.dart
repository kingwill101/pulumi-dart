// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDnsResolver.
class GetDnsResolverResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The current status of the DNS resolver. This is a read-only property and any attempt to set this value will be ignored.
  final String? dnsResolverState;
  /// ETag of the DNS resolver.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The current provisioning state of the DNS resolver. This is a read-only property and any attempt to set this value will be ignored.
  final String? provisioningState;
  /// The resourceGuid property of the DNS resolver resource.
  final String? resourceGuid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The reference to the virtual network. This cannot be changed after creation.
  final SubResourceResponse? virtualNetwork;

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
  const GetDnsResolverResult({
    this.azureApiVersion,
    this.dnsResolverState,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.systemData,
    this.tags,
    this.type,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dnsResolverState': ?dnsResolverState,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualNetwork': ?virtualNetwork?.toMap(),
    };
  }

  factory GetDnsResolverResult.fromMap(Map<String, dynamic> map) {
    return GetDnsResolverResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsResolverState: (() { final guardedValue = map['dnsResolverState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
