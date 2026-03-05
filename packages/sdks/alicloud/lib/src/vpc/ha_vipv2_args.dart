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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haVipName: (() { final guardedValue = map['haVipName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      havipName: (() { final guardedValue = map['havipName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

