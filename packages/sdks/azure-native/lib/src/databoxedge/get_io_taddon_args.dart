// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_io_taddon_args_doc}
/// Arguments for getIoTAddon.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_io_taddon_args_doc}
class GetIoTAddonArgs {
  /// The addon name.
  final pulumi.Input<String> addonName;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetIoTAddonArgs].
  /// [addonName] The addon name.
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  /// [roleName] The role name.
  GetIoTAddonArgs({
    required pulumi.Output<String> addonName,
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> roleName,
  }) :
      addonName = pulumi.Input.asInput<String>(addonName),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'roleName': roleName,
    };
  }

  factory GetIoTAddonArgs.fromMap(Map<String, dynamic> map) {
    return GetIoTAddonArgs(
      addonName: pulumi.Output.create<String>(map['addonName'] as String),
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

