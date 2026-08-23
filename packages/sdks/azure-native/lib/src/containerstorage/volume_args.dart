// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerstorage_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_containerstorage_volume_args_doc}
class VolumeArgs {
  /// Requested capacity in GiB
  final pulumi.Input<double> capacityGiB;
  /// String KV pairs indicating labels
  final pulumi.Input<Map<String, String>> labels;
  /// Pool Object
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Volume Resource
  final pulumi.Input<String>? volumeName;

  /// Creates a new [VolumeArgs].
  /// [capacityGiB] Requested capacity in GiB
  /// [labels] String KV pairs indicating labels
  /// [poolName] Pool Object
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeName] Volume Resource
  const VolumeArgs({
    required this.capacityGiB,
    required this.labels,
    required this.poolName,
    required this.resourceGroupName,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGiB': capacityGiB,
      'labels': labels,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': ?volumeName,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      capacityGiB: pulumi.Input.fromValue(map['capacityGiB'] as double),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
