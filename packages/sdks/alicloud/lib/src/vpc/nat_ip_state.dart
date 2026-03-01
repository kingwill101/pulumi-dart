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
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<String>? natIp,
    pulumi.Output<String>? natIpCidr,
    pulumi.Output<String>? natIpCidrId,
    pulumi.Output<String>? natIpDescription,
    pulumi.Output<String>? natIpId,
    pulumi.Output<String>? natIpName,
    pulumi.Output<String>? status,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      natIp = pulumi.Input.asOptionalInput<String>(natIp),
      natIpCidr = pulumi.Input.asOptionalInput<String>(natIpCidr),
      natIpCidrId = pulumi.Input.asOptionalInput<String>(natIpCidrId),
      natIpDescription = pulumi.Input.asOptionalInput<String>(natIpDescription),
      natIpId = pulumi.Input.asOptionalInput<String>(natIpId),
      natIpName = pulumi.Input.asOptionalInput<String>(natIpName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      natIp: map['natIp'] == null ? null : pulumi.Output.create<String>(map['natIp'] as String),
      natIpCidr: map['natIpCidr'] == null ? null : pulumi.Output.create<String>(map['natIpCidr'] as String),
      natIpCidrId: map['natIpCidrId'] == null ? null : pulumi.Output.create<String>(map['natIpCidrId'] as String),
      natIpDescription: map['natIpDescription'] == null ? null : pulumi.Output.create<String>(map['natIpDescription'] as String),
      natIpId: map['natIpId'] == null ? null : pulumi.Output.create<String>(map['natIpId'] as String),
      natIpName: map['natIpName'] == null ? null : pulumi.Output.create<String>(map['natIpName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

