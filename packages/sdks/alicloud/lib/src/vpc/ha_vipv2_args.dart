// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ha_vipv2_ha_vipv2_args_doc}
/// The set of arguments for HaVipv2.
/// {@endtemplate}
/// {@macro pulumi_vpc_ha_vipv2_ha_vipv2_args_doc}
class HaVipv2Args {
  /// The description of the HAVIP. The description must be 1 to 255 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The name of the HAVIP. The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? haVipName;
  /// . Field 'havip_name' has been deprecated from provider version 1.259.0. New field 'ha_vip_name' instead.
  final pulumi.Input<String>? havipName;
  /// The IP address of the HAVIP. The specified IP address must be an idle IP address that falls within the CIDR block of the vSwitch. If this parameter is not set, an idle IP address from the CIDR block of the vSwitch is randomly assigned to the HAVIP.
  final pulumi.Input<String>? ipAddress;
  /// The ID of the resource group to which the HAVIP belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The tags of HaVip.
  final pulumi.Input<Map<String, String>>? tags;
  /// The switch ID to which the HaVip instance belongs
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String> vswitchId;

  /// Creates a new [HaVipv2Args].
  /// [description] The description of the HAVIP. The description must be 1 to 255 characters in length and cannot start with `http://` or `https://`.
  /// [haVipName] The name of the HAVIP. The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  /// [havipName] . Field 'havip_name' has been deprecated from provider version 1.259.0. New field 'ha_vip_name' instead.
  /// [ipAddress] The IP address of the HAVIP. The specified IP address must be an idle IP address that falls within the CIDR block of the vSwitch. If this parameter is not set, an idle IP address from the CIDR block of the vSwitch is randomly assigned to the HAVIP.
  /// [resourceGroupId] The ID of the resource group to which the HAVIP belongs.
  /// [tags] The tags of HaVip.
  /// [vswitchId] The switch ID to which the HaVip instance belongs
  HaVipv2Args({
    this.description,
    this.haVipName,
    this.havipName,
    this.ipAddress,
    this.resourceGroupId,
    this.tags,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'haVipName': ?haVipName,
      'havipName': ?havipName,
      'ipAddress': ?ipAddress,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vswitchId': vswitchId,
    };
  }

  factory HaVipv2Args.fromMap(Map<String, dynamic> map) {
    return HaVipv2Args(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      haVipName: map['haVipName'] == null ? null : (map['haVipName']! as String).input(),
      havipName: map['havipName'] == null ? null : (map['havipName']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

