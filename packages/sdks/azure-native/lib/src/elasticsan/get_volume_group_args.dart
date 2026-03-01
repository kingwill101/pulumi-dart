// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsan_get_volume_group_args_doc}
/// Arguments for getVolumeGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_get_volume_group_args_doc}
class GetVolumeGroupArgs {
  /// The name of the ElasticSan.
  final pulumi.Input<String> elasticSanName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VolumeGroup.
  final pulumi.Input<String> volumeGroupName;

  /// Creates a new [GetVolumeGroupArgs].
  /// [elasticSanName] The name of the ElasticSan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeGroupName] The name of the VolumeGroup.
  GetVolumeGroupArgs({
    required pulumi.Output<String> elasticSanName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeGroupName,
  }) :
      elasticSanName = pulumi.Input.asInput<String>(elasticSanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeGroupName = pulumi.Input.asInput<String>(volumeGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanName': elasticSanName,
      'resourceGroupName': resourceGroupName,
      'volumeGroupName': volumeGroupName,
    };
  }

  factory GetVolumeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupArgs(
      elasticSanName: pulumi.Output.create<String>(map['elasticSanName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeGroupName: pulumi.Output.create<String>(map['volumeGroupName'] as String),
    );
  }
}

