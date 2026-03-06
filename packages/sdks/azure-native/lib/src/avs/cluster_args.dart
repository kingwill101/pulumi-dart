// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_avs_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_avs_cluster_args_doc}
class ClusterArgs {
  /// Name of the cluster
  final pulumi.Input<String>? clusterName;
  /// The cluster size
  final pulumi.Input<int>? clusterSize;
  /// The hosts
  final pulumi.Input<List<String>>? hosts;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final pulumi.Input<Sku> sku;
  /// Name of the vsan datastore associated with the cluster
  final pulumi.Input<String>? vsanDatastoreName;

  /// Creates a new [ClusterArgs].
  /// [clusterName] Name of the cluster
  /// [clusterSize] The cluster size
  /// [hosts] The hosts
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU (Stock Keeping Unit) assigned to this resource.
  /// [vsanDatastoreName] Name of the vsan datastore associated with the cluster
  const ClusterArgs({
    this.clusterName,
    this.clusterSize,
    this.hosts,
    required this.privateCloudName,
    required this.resourceGroupName,
    required this.sku,
    this.vsanDatastoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'clusterSize': ?clusterSize,
      'hosts': ?hosts,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'vsanDatastoreName': ?vsanDatastoreName,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      vsanDatastoreName: (() { final guardedValue = map['vsanDatastoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

