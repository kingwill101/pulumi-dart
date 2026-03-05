// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatIp resources.
class NatIpState {
  /// Specifies whether to check the validity of the request without actually making the request.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the Virtual Private Cloud (VPC) NAT gateway for which you want to create the NAT IP address.
  final pulumi.Input<String>? natGatewayId;
  /// The NAT IP address that you want to create. If you do not specify an IP address, the system selects a random IP address from the specified CIDR block.
  final pulumi.Input<String>? natIp;
  /// NAT IP ADDRESS of the address segment.
  final pulumi.Input<String>? natIpCidr;
  /// The ID of the CIDR block to which the NAT IP address belongs.
  final pulumi.Input<String>? natIpCidrId;
  /// NAT IP ADDRESS description of information. Length is from `2` to `256` characters, must start with a letter or the Chinese at the beginning, but not at the` http://` Or `https://` at the beginning.
  final pulumi.Input<String>? natIpDescription;
  /// Ihe ID of the Nat Ip.
  final pulumi.Input<String>? natIpId;
  /// NAT IP ADDRESS the name of the root directory. Length is from `2` to `128` characters, must start with a letter or the Chinese at the beginning can contain numbers, half a period (.), underscore (_) and dash (-). But do not start with `http://` or `https://` at the beginning.
  final pulumi.Input<String>? natIpName;
  /// The status of the NAT IP address. Valid values: `Available`, `Deleting`, `Creating` and `Deleted`.
  final pulumi.Input<String>? status;

  /// Creates a new [NatIpState].
  /// [dryRun] Specifies whether to check the validity of the request without actually making the request.
  /// [natGatewayId] The ID of the Virtual Private Cloud (VPC) NAT gateway for which you want to create the NAT IP address.
  /// [natIp] The NAT IP address that you want to create. If you do not specify an IP address, the system selects a random IP address from the specified CIDR block.
  /// [natIpCidr] NAT IP ADDRESS of the address segment.
  /// [natIpCidrId] The ID of the CIDR block to which the NAT IP address belongs.
  /// [natIpDescription] NAT IP ADDRESS description of information. Length is from `2` to `256` characters, must start with a letter or the Chinese at the beginning, but not at the` http://` Or `https://` at the beginning.
  /// [natIpId] Ihe ID of the Nat Ip.
  /// [natIpName] NAT IP ADDRESS the name of the root directory. Length is from `2` to `128` characters, must start with a letter or the Chinese at the beginning can contain numbers, half a period (.), underscore (_) and dash (-). But do not start with `http://` or `https://` at the beginning.
  /// [status] The status of the NAT IP address. Valid values: `Available`, `Deleting`, `Creating` and `Deleted`.
  NatIpState({
    this.dryRun,
    this.natGatewayId,
    this.natIp,
    this.natIpCidr,
    this.natIpCidrId,
    this.natIpDescription,
    this.natIpId,
    this.natIpName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'natGatewayId': ?natGatewayId,
      'natIp': ?natIp,
      'natIpCidr': ?natIpCidr,
      'natIpCidrId': ?natIpCidrId,
      'natIpDescription': ?natIpDescription,
      'natIpId': ?natIpId,
      'natIpName': ?natIpName,
      'status': ?status,
    };
  }

  factory NatIpState.fromMap(Map<String, dynamic> map) {
    return NatIpState(
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIp: (() { final guardedValue = map['natIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIpCidr: (() { final guardedValue = map['natIpCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIpCidrId: (() { final guardedValue = map['natIpCidrId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIpDescription: (() { final guardedValue = map['natIpDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIpId: (() { final guardedValue = map['natIpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natIpName: (() { final guardedValue = map['natIpName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

