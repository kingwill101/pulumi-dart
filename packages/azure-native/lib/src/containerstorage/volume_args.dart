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
  VolumeArgs({
    required double capacityGiB,
    required Map<String, String> labels,
    required String poolName,
    required String resourceGroupName,
    String? volumeName,
  }) :
      capacityGiB = pulumi.Input.asInput<double>(capacityGiB),
      labels = pulumi.Input.asInput<Map<String, String>>(labels),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asOptionalInput<String>(volumeName);

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
      capacityGiB: map['capacityGiB'] as double,
      labels: (map['labels'] as Map).cast<String, String>(),
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
    );
  }
}

