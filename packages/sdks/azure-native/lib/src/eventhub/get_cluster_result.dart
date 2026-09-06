// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The UTC time when the Event Hubs Cluster was created.
  final String? createdAt;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Resource location.
  final String? location;
  /// The metric ID of the cluster resource. Provided by the service and not modifiable by the user.
  final String? metricId;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the Cluster.
  final String? provisioningState;
  /// Properties of the cluster SKU.
  final ClusterSkuResponse? sku;
  /// Status of the Cluster resource
  final String? status;
  /// A value that indicates whether Scaling is Supported.
  final bool? supportsScaling;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The UTC time when the Event Hubs Cluster was last updated.
  final String? updatedAt;

  /// Creates a new [GetClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] The UTC time when the Event Hubs Cluster was created.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] Resource location.
  /// [metricId] The metric ID of the cluster resource. Provided by the service and not modifiable by the user.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the Cluster.
  /// [sku] Properties of the cluster SKU.
  /// [status] Status of the Cluster resource
  /// [supportsScaling] A value that indicates whether Scaling is Supported.
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedAt] The UTC time when the Event Hubs Cluster was last updated.
  const GetClusterResult({
    this.azureApiVersion,
    this.createdAt,
    this.id,
    this.location,
    this.metricId,
    this.name,
    this.provisioningState,
    this.sku,
    this.status,
    this.supportsScaling,
    this.systemData,
    this.tags,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdAt': ?createdAt,
      'id': ?id,
      'location': ?location,
      'metricId': ?metricId,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'status': ?status,
      'supportsScaling': ?supportsScaling,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricId: (() { final guardedValue = map['metricId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ClusterSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportsScaling: (() { final guardedValue = map['supportsScaling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
