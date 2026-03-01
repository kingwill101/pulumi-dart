// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_addon_args_doc}
/// Arguments for getAddon.
/// {@endtemplate}
/// {@macro pulumi_avs_get_addon_args_doc}
class GetAddonArgs {
  /// Name of the addon.
  final pulumi.Input<String> addonName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAddonArgs].
  /// [addonName] Name of the addon.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAddonArgs({
    required pulumi.Output<String> addonName,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      addonName = pulumi.Input.asInput<String>(addonName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAddonArgs.fromMap(Map<String, dynamic> map) {
    return GetAddonArgs(
      addonName: pulumi.Output.create<String>(map['addonName'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

