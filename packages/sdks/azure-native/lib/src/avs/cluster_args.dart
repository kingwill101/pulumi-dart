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
    pulumi.Output<String>? clusterName,
    pulumi.Output<int>? clusterSize,
    pulumi.Output<List<String>>? hosts,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<Sku> sku,
    pulumi.Output<String>? vsanDatastoreName,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterSize = pulumi.Input.asOptionalInput<int>(clusterSize),
      hosts = pulumi.Input.asOptionalInput<List<String>>(hosts),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      vsanDatastoreName = pulumi.Input.asOptionalInput<String>(vsanDatastoreName);

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
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterSize: map['clusterSize'] == null ? null : pulumi.Output.create<int>(map['clusterSize'] as int),
      hosts: map['hosts'] == null ? null : pulumi.Output.create<List<String>>((map['hosts'] as List).cast<String>()),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      vsanDatastoreName: map['vsanDatastoreName'] == null ? null : pulumi.Output.create<String>(map['vsanDatastoreName'] as String),
    );
  }
}

