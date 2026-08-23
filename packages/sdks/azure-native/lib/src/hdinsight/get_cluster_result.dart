// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_get_properties_response.dart';
import 'cluster_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ETag for the resource
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the cluster, if configured.
  final ClusterIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The properties of the cluster.
  final ClusterGetPropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The ETag for the resource
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the cluster, if configured.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [properties] The properties of the cluster.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zones] The availability zones.
  const GetClusterResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ClusterIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: ClusterGetPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
