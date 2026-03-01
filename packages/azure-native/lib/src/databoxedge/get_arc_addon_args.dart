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
  GetArcAddonArgs({
    required String addonName,
    required String deviceName,
    required String resourceGroupName,
    required String roleName,
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

  factory GetArcAddonArgs.fromMap(Map<String, dynamic> map) {
    return GetArcAddonArgs(
      addonName: map['addonName'] as String,
      deviceName: map['deviceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      roleName: map['roleName'] as String,
    );
  }
}

