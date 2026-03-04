// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_response_end_points.dart';
import 'error_detail_response.dart';

/// Properties of a Garnet cache cluster.
class ClusterResourceResponsePropertiesV1 {
  /// Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
  final pulumi.Input<String>? allocationState;

  /// If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the garnet cluster virtual machines.
  final pulumi.Input<bool>? availabilityZone;

  /// Type of the cluster. If set to Production, some operations might not be permitted on cluster.
  final pulumi.Input<String>? clusterType;

  /// endpoints for clients to connect to the cluster.
  final pulumi.Input<List<ClusterResourceResponseEndPoints>> endPoints;

  /// Extensions to be added or updated on cluster.
  final pulumi.Input<List<String>>? extensions;

  /// Number of nodes
  final pulumi.Input<int>? nodeCount;

  /// Virtual Machine SKU used for clusters. Default value is Standard_DS14_v2
  final pulumi.Input<String>? nodeSku;

  /// Error related to resource provisioning.
  final pulumi.Input<ErrorDetailResponse>? provisionError;

  /// The status of the resource at the time the operation was called.
  final pulumi.Input<String> provisioningState;

  /// Number of copies of data maintained by the cluster
  final pulumi.Input<int>? replicationFactor;

  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  final pulumi.Input<String>? subnetId;

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
  /// [subnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
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
      'endPoints':
          pulumi.Input.mapInputValue<
            List<ClusterResourceResponseEndPoints>,
            List<Map<String, dynamic>>
          >(
            endPoints,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterResourceResponseEndPoints,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'extensions': ?extensions,
      'nodeCount': ?nodeCount,
      'nodeSku': ?nodeSku,
      'provisionError':
          ?pulumi.Input.mapOptionalInputValue<
            ErrorDetailResponse,
            Map<String, dynamic>
          >(provisionError, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'replicationFactor': ?replicationFactor,
      'subnetId': ?subnetId,
    };
  }

  factory ClusterResourceResponsePropertiesV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterResourceResponsePropertiesV1(
      allocationState: (() {
        final guardedValue = map['allocationState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clusterType: (() {
        final guardedValue = map['clusterType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endPoints: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ClusterResourceResponseEndPoints>(
          map['endPoints']!,
          (value) => ClusterResourceResponseEndPoints.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      extensions: (() {
        final guardedValue = map['extensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeSku: (() {
        final guardedValue = map['nodeSku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisionError: (() {
        final guardedValue = map['provisionError'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ErrorDetailResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      replicationFactor: (() {
        final guardedValue = map['replicationFactor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
