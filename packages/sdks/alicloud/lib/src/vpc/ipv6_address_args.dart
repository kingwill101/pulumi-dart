// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipv6_address_ipv6_address_args_doc}
/// The set of arguments for Ipv6Address.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipv6_address_ipv6_address_args_doc}
class Ipv6AddressArgs {
  /// The type of the IPv6 address. Value:
  /// - `IPv6Address` (default): indicates that the current instance is a single IPv6 address.
  /// - `IPv6Prefix`: indicates that the current instance is a contiguous block of IPv6 addresses.
  final pulumi.Input<String>? addressType;
  /// IPv6 address
  final pulumi.Input<String>? ipv6Address;
  /// The description of the IPv6 Address. The description must be 2 to 256 characters in length. It cannot start with http:// or https://.
  final pulumi.Input<String>? ipv6AddressDescription;
  /// The name of the IPv6 Address. The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://.
  final pulumi.Input<String>? ipv6AddressName;
  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VSwitchId of the IPv6 address.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [Ipv6AddressArgs].
  /// [addressType] The type of the IPv6 address. Value:
  /// [ipv6Address] IPv6 address
  /// [ipv6AddressDescription] The description of the IPv6 Address. The description must be 2 to 256 characters in length. It cannot start with http:// or https://.
  /// [ipv6AddressName] The name of the IPv6 Address. The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://.
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [tags] The tags for the resource.
  /// [vswitchId] The VSwitchId of the IPv6 address.
  Ipv6AddressArgs({
    this.addressType,
    this.ipv6Address,
    this.ipv6AddressDescription,
    this.ipv6AddressName,
    this.resourceGroupId,
    this.tags,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressType': ?addressType,
      'ipv6Address': ?ipv6Address,
      'ipv6AddressDescription': ?ipv6AddressDescription,
      'ipv6AddressName': ?ipv6AddressName,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vswitchId': vswitchId,
    };
  }

  factory Ipv6AddressArgs.fromMap(Map<String, dynamic> map) {
    return Ipv6AddressArgs(
      addressType: (() { final guardedValue = map['addressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AddressDescription: (() { final guardedValue = map['ipv6AddressDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AddressName: (() { final guardedValue = map['ipv6AddressName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

