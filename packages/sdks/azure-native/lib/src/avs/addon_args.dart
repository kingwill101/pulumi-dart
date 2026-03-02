// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_arc_properties.dart';

/// {@template pulumi_avs_addon_args_doc}
/// The set of arguments for Addon.
/// {@endtemplate}
/// {@macro pulumi_avs_addon_args_doc}
class AddonArgs {
  /// Name of the addon.
  final pulumi.Input<String>? addonName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<AddonArcProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AddonArgs].
  /// [addonName] Name of the addon.
  /// [privateCloudName] Name of the private cloud
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AddonArgs({
    this.addonName,
    required this.privateCloudName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': ?addonName,
      'privateCloudName': privateCloudName,
      'properties': ?pulumi.Input.mapOptionalInputValue<AddonArcProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AddonArgs.fromMap(Map<String, dynamic> map) {
    return AddonArgs(
      addonName: map['addonName'] == null ? null : (map['addonName']! as String).input(),
      privateCloudName: (map['privateCloudName'] as String).input(),
      properties: map['properties'] == null ? null : (AddonArcProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

