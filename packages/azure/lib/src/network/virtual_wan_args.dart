// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_virtual_wan_virtual_wan_args_doc}
/// The set of arguments for VirtualWan.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_wan_virtual_wan_args_doc}
class VirtualWanArgs {
  /// Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `true`.
  final pulumi.Input<bool>? allowBranchToBranchTraffic;
  /// Boolean flag to specify whether VPN encryption is disabled. Defaults to `false`.
  final pulumi.Input<bool>? disableVpnEncryption;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Virtual WAN. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Office365 local breakout category. Possible values include: `Optimize`, `OptimizeAndAllow`, `All`, `None`. Defaults to `None`.
  final pulumi.Input<String>? office365LocalBreakoutCategory;
  /// The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Virtual WAN.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Virtual WAN type. Possible Values include: `Basic` and `Standard`. Defaults to `Standard`.
  final pulumi.Input<String>? type;

  /// Creates a new [VirtualWanArgs].
  /// [allowBranchToBranchTraffic] Boolean flag to specify whether branch to branch traffic is allowed. Defaults to `true`.
  /// [disableVpnEncryption] Boolean flag to specify whether VPN encryption is disabled. Defaults to `false`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Virtual WAN. Changing this forces a new resource to be created.
  /// [office365LocalBreakoutCategory] Specifies the Office365 local breakout category. Possible values include: `Optimize`, `OptimizeAndAllow`, `All`, `None`. Defaults to `None`.
  /// [resourceGroupName] The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Virtual WAN.
  /// [type] Specifies the Virtual WAN type. Possible Values include: `Basic` and `Standard`. Defaults to `Standard`.
  VirtualWanArgs({
    bool? allowBranchToBranchTraffic,
    bool? disableVpnEncryption,
    String? location,
    String? name,
    String? office365LocalBreakoutCategory,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? type,
  }) :
      allowBranchToBranchTraffic = pulumi.Input.asOptionalInput<bool>(allowBranchToBranchTraffic),
      disableVpnEncryption = pulumi.Input.asOptionalInput<bool>(disableVpnEncryption),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      office365LocalBreakoutCategory = pulumi.Input.asOptionalInput<String>(office365LocalBreakoutCategory),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBranchToBranchTraffic': ?allowBranchToBranchTraffic,
      'disableVpnEncryption': ?disableVpnEncryption,
      'location': ?location,
      'name': ?name,
      'office365LocalBreakoutCategory': ?office365LocalBreakoutCategory,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory VirtualWanArgs.fromMap(Map<String, dynamic> map) {
    return VirtualWanArgs(
      allowBranchToBranchTraffic: map['allowBranchToBranchTraffic'] == null ? null : map['allowBranchToBranchTraffic'] as bool,
      disableVpnEncryption: map['disableVpnEncryption'] == null ? null : map['disableVpnEncryption'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      office365LocalBreakoutCategory: map['office365LocalBreakoutCategory'] == null ? null : map['office365LocalBreakoutCategory'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

