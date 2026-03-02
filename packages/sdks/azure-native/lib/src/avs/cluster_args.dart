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
  ClusterArgs({
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
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      clusterSize: map['clusterSize'] == null ? null : (map['clusterSize']! as int).input(),
      hosts: map['hosts'] == null ? null : ((map['hosts']! as List).cast<String>()).input(),
      privateCloudName: (map['privateCloudName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      vsanDatastoreName: map['vsanDatastoreName'] == null ? null : (map['vsanDatastoreName']! as String).input(),
    );
  }
}

