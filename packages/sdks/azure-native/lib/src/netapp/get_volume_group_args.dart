// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_volume_group_args_doc}
/// Arguments for getVolumeGroup.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_volume_group_args_doc}
class GetVolumeGroupArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the volumeGroup
  final pulumi.Input<String> volumeGroupName;

  /// Creates a new [GetVolumeGroupArgs].
  /// [accountName] The name of the NetApp account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeGroupName] The name of the volumeGroup
  GetVolumeGroupArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> volumeGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeGroupName = pulumi.Input.asInput<String>(volumeGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'volumeGroupName': volumeGroupName,
    };
  }

  factory GetVolumeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeGroupName: pulumi.Output.create<String>(map['volumeGroupName'] as String),
    );
  }
}

