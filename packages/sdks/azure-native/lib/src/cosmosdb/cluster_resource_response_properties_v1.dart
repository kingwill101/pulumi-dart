// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_response_end_points.dart';
import 'error_detail_response.dart';

/// Properties of a Garnet cache cluster.
class ClusterResourceResponsePropertiesV1 {
  /// Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
  final String? allocationState;
  /// If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the garnet cluster virtual machines.
  final bool? availabilityZone;
  /// Type of the cluster. If set to Production, some operations might not be permitted on cluster.
  final String? clusterType;
  /// endpoints for clients to connect to the cluster.
  final List<ClusterResourceResponseEndPoints> endPoints;
  /// Extensions to be added or updated on cluster.
  final List<String>? extensions;
  /// Number of nodes
  final int? nodeCount;
  /// Virtual Machine SKU used for clusters. Default value is Standard_DS14_v2
  final String? nodeSku;
  /// Error related to resource provisioning.
  final ErrorDetailResponse? provisionError;
  /// The status of the resource at the time the operation was called.
  final String provisioningState;
  /// Number of copies of data maintained by the cluster
  final int? replicationFactor;
  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'
  final String? subnetId;

  /// Creates a new [ClusterResourceResponsePropertiesV1].
  /// [allocationState] Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
  /// [availabilityZone] If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the garnet cluster virtual machines.
  /// [clusterType] Type of the cluster. If set to Production, some operations might not be permitted on cluster.
  /// [endPoints] endpoints for clients to connect to the cluster.
  /// [extensions] Extensions to be added or updated on cluster.
  /// [nodeCount] Number of nodes
  /// [nodeSku] Virtual Machine SKU used for clusters. Default value is Standard_DS14_v2
  /// [provisionError] Error related to resource provisioning.
  /// [provisioningState] The status of the resource at the time the operation was called.
  /// [replicationFactor] Number of copies of data maintained by the cluster
  /// [subnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'
  ClusterResourceResponsePropertiesV1({
    this.allocationState,
    this.availabilityZone,
    this.clusterType,
    required this.endPoints,
    this.extensions,
    this.nodeCount,
    this.nodeSku,
    this.provisionError,
    required this.provisioningState,
    this.replicationFactor,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationState': ?allocationState,
      'availabilityZone': ?availabilityZone,
      'clusterType': ?clusterType,
      'endPoints': pulumi.Input.encodeList<ClusterResourceResponseEndPoints, Map<String, dynamic>>(endPoints, (value) => value.toMap()),
      'extensions': ?extensions,
      'nodeCount': ?nodeCount,
      'nodeSku': ?nodeSku,
      'provisionError': ?provisionError == null ? null : provisionError!.toMap(),
      'provisioningState': provisioningState,
      'replicationFactor': ?replicationFactor,
      'subnetId': ?subnetId,
    };
  }

  factory ClusterResourceResponsePropertiesV1.fromMap(Map<String, dynamic> map) {
    return ClusterResourceResponsePropertiesV1(
      allocationState: map['allocationState'] == null ? null : map['allocationState'] as String,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as bool,
      clusterType: map['clusterType'] == null ? null : map['clusterType'] as String,
      endPoints: pulumi.Input.decodeList<ClusterResourceResponseEndPoints>(map['endPoints'], (value) => ClusterResourceResponseEndPoints.fromMap((value as Map).cast<String, dynamic>())),
      extensions: map['extensions'] == null ? null : (map['extensions'] as List).cast<String>(),
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeSku: map['nodeSku'] == null ? null : map['nodeSku'] as String,
      provisionError: map['provisionError'] == null ? null : ErrorDetailResponse.fromMap((map['provisionError'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      replicationFactor: map['replicationFactor'] == null ? null : map['replicationFactor'] as int,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

