// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The UTC time when the Event Hubs Cluster was created.
  final String createdAt;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Resource location.
  final String? location;
  /// The metric ID of the cluster resource. Provided by the service and not modifiable by the user.
  final String metricId;
  /// The name of the resource
  final String name;
  /// Provisioning state of the Cluster.
  final String provisioningState;
  /// Properties of the cluster SKU.
  final ClusterSkuResponse? sku;
  /// Status of the Cluster resource
  final String status;
  /// A value that indicates whether Scaling is Supported.
  final bool? supportsScaling;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The UTC time when the Event Hubs Cluster was last updated.
  final String updatedAt;

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
  GetClusterResult({
    required this.azureApiVersion,
    required this.createdAt,
    required this.id,
    this.location,
    required this.metricId,
    required this.name,
    required this.provisioningState,
    this.sku,
    required this.status,
    this.supportsScaling,
    required this.systemData,
    this.tags,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'id': id,
      'location': ?location,
      'metricId': metricId,
      'name': name,
      'provisioningState': provisioningState,
      'sku': ?sku?.toMap(),
      'status': status,
      'supportsScaling': ?supportsScaling,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricId: map['metricId'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ClusterSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: map['status'] as String,
      supportsScaling: (() { final guardedValue = map['supportsScaling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

