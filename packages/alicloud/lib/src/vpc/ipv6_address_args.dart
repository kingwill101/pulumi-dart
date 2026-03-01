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
    String? addressType,
    String? ipv6Address,
    String? ipv6AddressDescription,
    String? ipv6AddressName,
    String? resourceGroupId,
    Map<String, String>? tags,
    required String vswitchId,
  }) :
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      ipv6Address = pulumi.Input.asOptionalInput<String>(ipv6Address),
      ipv6AddressDescription = pulumi.Input.asOptionalInput<String>(ipv6AddressDescription),
      ipv6AddressName = pulumi.Input.asOptionalInput<String>(ipv6AddressName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      addressType: map['addressType'] == null ? null : map['addressType'] as String,
      ipv6Address: map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      ipv6AddressDescription: map['ipv6AddressDescription'] == null ? null : map['ipv6AddressDescription'] as String,
      ipv6AddressName: map['ipv6AddressName'] == null ? null : map['ipv6AddressName'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vswitchId: map['vswitchId'] as String,
    );
  }
}

