// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a Garnet cache cluster.
class GarnetClusterResourceProperties {
  /// Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
  final pulumi.Input<dynamic>? allocationState;
  /// If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the garnet cluster virtual machines.
  final pulumi.Input<bool?>? availabilityZone;
  /// Type of the cluster. If set to Production, some operations might not be permitted on cluster.
  final pulumi.Input<dynamic>? clusterType;
  /// Extensions to be added or updated on cluster.
  final pulumi.Input<List<String>?>? extensions;
  /// Number of nodes.
  final pulumi.Input<int?>? nodeCount;
  /// Virtual Machine SKU used for clusters. Default value is Standard_DS14_v2.
  final pulumi.Input<String?>? nodeSku;
  /// Number of copies of data maintained by the cluster.
  final pulumi.Input<int?>? replicationFactor;
  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [GarnetClusterResourceProperties].
  /// [allocationState] Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
  /// [availabilityZone] If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the garnet cluster virtual machines.
  /// [clusterType] Type of the cluster. If set to Production, some operations might not be permitted on cluster.
  /// [extensions] Extensions to be added or updated on cluster.
  /// [nodeCount] Number of nodes.
  /// [nodeSku] Virtual Machine SKU used for clusters. Default value is Standard_DS14_v2.
  /// [replicationFactor] Number of copies of data maintained by the cluster.
  /// [subnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  const GarnetClusterResourceProperties({
    this.allocationState,
    this.availabilityZone,
    this.clusterType,
    this.extensions,
    this.nodeCount,
    this.nodeSku,
    this.replicationFactor,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationState': ?allocationState,
      'availabilityZone': ?availabilityZone,
      'clusterType': ?clusterType,
      'extensions': ?extensions,
      'nodeCount': ?nodeCount,
      'nodeSku': ?nodeSku,
      'replicationFactor': ?replicationFactor,
      'subnetId': ?subnetId,
    };
  }

  factory GarnetClusterResourceProperties.fromMap(Map<String, dynamic> map) {
    return GarnetClusterResourceProperties(
      allocationState: (() { final guardedValue = map['allocationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      nodeSku: (() { final guardedValue = map['nodeSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationFactor: (() { final guardedValue = map['replicationFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
