// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_arc_addon_args_doc}
/// Arguments for getArcAddon.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_arc_addon_args_doc}
class GetArcAddonArgs {
  /// The addon name.
  final pulumi.Input<String> addonName;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetArcAddonArgs].
  /// [addonName] The addon name.
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  /// [roleName] The role name.
  const GetArcAddonArgs({
    required this.addonName,
    required this.deviceName,
    required this.resourceGroupName,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'roleName': roleName,
    };
  }

  factory GetArcAddonArgs.fromMap(Map<String, dynamic> map) {
    return GetArcAddonArgs(
      addonName: pulumi.Input.fromValue(map['addonName'] as String),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}

