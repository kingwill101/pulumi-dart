// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_dedicated_block_storage_cluster_dedicated_block_storage_cluster_args_doc}
/// The set of arguments for DedicatedBlockStorageCluster.
/// {@endtemplate}
/// {@macro pulumi_ebs_dedicated_block_storage_cluster_dedicated_block_storage_cluster_args_doc}
class DedicatedBlockStorageClusterArgs {
  /// The name of the resource
  final pulumi.Input<String> dedicatedBlockStorageClusterName;

  /// The description of the dedicated block storage cluster.
  final pulumi.Input<String>? description;

  /// The total capacity of the dedicated block storage cluster. Unit: GiB.
  final pulumi.Input<String> totalCapacity;

  /// The dedicated block storage cluster performance type. Possible values:-Standard: Basic type. This type of dedicated block storage cluster can create an ESSD PL0 cloud disk.-Premium: performance type. This type of dedicated block storage cluster can create an ESSD PL1 cloud disk.
  final pulumi.Input<String> type;

  /// The zone ID  of the resource
  final pulumi.Input<String> zoneId;

  /// Creates a new [DedicatedBlockStorageClusterArgs].
  /// [dedicatedBlockStorageClusterName] The name of the resource
  /// [description] The description of the dedicated block storage cluster.
  /// [totalCapacity] The total capacity of the dedicated block storage cluster. Unit: GiB.
  /// [type] The dedicated block storage cluster performance type. Possible values:-Standard: Basic type. This type of dedicated block storage cluster can create an ESSD PL0 cloud disk.-Premium: performance type. This type of dedicated block storage cluster can create an ESSD PL1 cloud disk.
  /// [zoneId] The zone ID  of the resource
  DedicatedBlockStorageClusterArgs({
    required this.dedicatedBlockStorageClusterName,
    this.description,
    required this.totalCapacity,
    required this.type,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedBlockStorageClusterName': dedicatedBlockStorageClusterName,
      'description': ?description,
      'totalCapacity': totalCapacity,
      'type': type,
      'zoneId': zoneId,
    };
  }

  factory DedicatedBlockStorageClusterArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedBlockStorageClusterArgs(
      dedicatedBlockStorageClusterName: pulumi.Input.fromValue(
        map['dedicatedBlockStorageClusterName'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      totalCapacity: pulumi.Input.fromValue(map['totalCapacity'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
