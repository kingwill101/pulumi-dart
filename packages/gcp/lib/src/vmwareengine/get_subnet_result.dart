// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_dhcp_address_range.dart';

/// Result data returned by getSubnet.
class GetSubnetResult {
  final String createTime;
  final List<GetSubnetDhcpAddressRange> dhcpAddressRanges;
  final String gatewayId;
  final String gatewayIp;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipCidrRange;
  final String name;
  final String parent;
  final bool standardConfig;
  final String state;
  final String type;
  final String uid;
  final String updateTime;
  final int vlanId;

  /// Creates a new [GetSubnetResult].
  /// [createTime] Required.
  /// [dhcpAddressRanges] Required.
  /// [gatewayId] Required.
  /// [gatewayIp] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipCidrRange] Required.
  /// [name] Required.
  /// [parent] Required.
  /// [standardConfig] Required.
  /// [state] Required.
  /// [type] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  /// [vlanId] Required.
  GetSubnetResult({
    required this.createTime,
    required this.dhcpAddressRanges,
    required this.gatewayId,
    required this.gatewayIp,
    required this.id,
    required this.ipCidrRange,
    required this.name,
    required this.parent,
    required this.standardConfig,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['dhcpAddressRanges'] = pulumi.Input.encodeList<
        GetSubnetDhcpAddressRange,
        Map<String, dynamic>>(dhcpAddressRanges, (value) => value.toMap());
    map['gatewayId'] = gatewayId;
    map['gatewayIp'] = gatewayIp;
    map['id'] = id;
    map['ipCidrRange'] = ipCidrRange;
    map['name'] = name;
    map['parent'] = parent;
    map['standardConfig'] = standardConfig;
    map['state'] = state;
    map['type'] = type;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['vlanId'] = vlanId;
    return map;
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      createTime: map['createTime'] as String,
      dhcpAddressRanges: pulumi.Input.decodeList<GetSubnetDhcpAddressRange>(
          map['dhcpAddressRanges'],
          (value) => GetSubnetDhcpAddressRange.fromMap(
              (value as Map).cast<String, dynamic>())),
      gatewayId: map['gatewayId'] as String,
      gatewayIp: map['gatewayIp'] as String,
      id: map['id'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      standardConfig: map['standardConfig'] as bool,
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}
