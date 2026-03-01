// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsan_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_get_volume_args_doc}
class GetVolumeArgs {
  /// The name of the ElasticSan.
  final pulumi.Input<String> elasticSanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VolumeGroup.
  final pulumi.Input<String> volumeGroupName;
  /// The name of the Volume.
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetVolumeArgs].
  /// [elasticSanName] The name of the ElasticSan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeGroupName] The name of the VolumeGroup.
  /// [volumeName] The name of the Volume.
  GetVolumeArgs({
    required pulumi.Output<String> elasticSanName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeGroupName,
    required pulumi.Output<String> volumeName,
  }) :
      elasticSanName = pulumi.Input.asInput<String>(elasticSanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeGroupName = pulumi.Input.asInput<String>(volumeGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanName': elasticSanName,
      'resourceGroupName': resourceGroupName,
      'volumeGroupName': volumeGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      elasticSanName: pulumi.Output.create<String>(map['elasticSanName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeGroupName: pulumi.Output.create<String>(map['volumeGroupName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

