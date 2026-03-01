// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerstorage_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_containerstorage_get_volume_args_doc}
class GetVolumeArgs {
  /// Pool Object
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Volume Resource
  final pulumi.Input<String> volumeName;

  /// Creates a new [GetVolumeArgs].
  /// [poolName] Pool Object
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeName] Volume Resource
  GetVolumeArgs({
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeName,
  }) :
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeName = pulumi.Input.asInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'volumeName': volumeName,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
    );
  }
}

