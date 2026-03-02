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
    required this.elasticSanName,
    required this.resourceGroupName,
    required this.volumeGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanName': elasticSanName,
      'resourceGroupName': resourceGroupName,
      'volumeGroupName': volumeGroupName,
    };
  }

  factory GetVolumeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupArgs(
      elasticSanName: (map['elasticSanName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      volumeGroupName: (map['volumeGroupName'] as String).input(),
    );
  }
}

