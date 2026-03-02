// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_list_cluster_zones_args_doc}
/// Arguments for listClusterZones.
/// {@endtemplate}
/// {@macro pulumi_avs_list_cluster_zones_args_doc}
class ListClusterZonesArgs {
  /// Name of the cluster
  final pulumi.Input<String> clusterName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListClusterZonesArgs].
  /// [clusterName] Name of the cluster
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListClusterZonesArgs({
    required this.clusterName,
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListClusterZonesArgs.fromMap(Map<String, dynamic> map) {
    return ListClusterZonesArgs(
      clusterName: (map['clusterName'] as String).input(),
      privateCloudName: (map['privateCloudName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

