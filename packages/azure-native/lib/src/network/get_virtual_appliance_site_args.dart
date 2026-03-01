// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_appliance_site_args_doc}
/// Arguments for getVirtualApplianceSite.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_appliance_site_args_doc}
class GetVirtualApplianceSiteArgs {
  /// The name of the Network Virtual Appliance.
  final pulumi.Input<String> networkVirtualApplianceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the site.
  final pulumi.Input<String> siteName;

  /// Creates a new [GetVirtualApplianceSiteArgs].
  /// [networkVirtualApplianceName] The name of the Network Virtual Appliance.
  /// [resourceGroupName] The name of the resource group.
  /// [siteName] The name of the site.
  GetVirtualApplianceSiteArgs({
    required String networkVirtualApplianceName,
    required String resourceGroupName,
    required String siteName,
  }) :
      networkVirtualApplianceName = pulumi.Input.asInput<String>(networkVirtualApplianceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkVirtualApplianceName': networkVirtualApplianceName,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetVirtualApplianceSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualApplianceSiteArgs(
      networkVirtualApplianceName: map['networkVirtualApplianceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
    );
  }
}

