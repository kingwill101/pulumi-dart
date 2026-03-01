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
    required pulumi.Output<String> dedicatedBlockStorageClusterName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> totalCapacity,
    required pulumi.Output<String> type,
    required pulumi.Output<String> zoneId,
  }) :
      dedicatedBlockStorageClusterName = pulumi.Input.asInput<String>(dedicatedBlockStorageClusterName),
      description = pulumi.Input.asOptionalInput<String>(description),
      totalCapacity = pulumi.Input.asInput<String>(totalCapacity),
      type = pulumi.Input.asInput<String>(type),
      zoneId = pulumi.Input.asInput<String>(zoneId);

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
      dedicatedBlockStorageClusterName: pulumi.Output.create<String>(map['dedicatedBlockStorageClusterName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      totalCapacity: pulumi.Output.create<String>(map['totalCapacity'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

