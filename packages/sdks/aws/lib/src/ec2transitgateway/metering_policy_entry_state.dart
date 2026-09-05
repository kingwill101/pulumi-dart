// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metering_policy_entry_timeouts.dart';

/// Input properties used for looking up and filtering MeteringPolicyEntry resources.
class MeteringPolicyEntryState {
  /// Destination CIDR block to match. If not specified, all destination CIDR blocks are matched.
  final pulumi.Input<String?>? destinationCidrBlock;
  final pulumi.Input<String?>? destinationPortRange;
  final pulumi.Input<String?>? destinationTransitGatewayAttachmentId;
  /// Destination attachment resource type to match. Valid values are `vpc`, `vpn`, `direct-connect-gateway`, `connect`, `peering`, `tgw-peering`.
  final pulumi.Input<String?>? destinationTransitGatewayAttachmentType;
  /// The account to charge for matching traffic. Valid values are `source-attachment-owner` or `destination-attachment-owner`.
  final pulumi.Input<String?>? meteredAccount;
  /// Rule number for this entry. Lower numbers have higher priority. Valid values are between `1` and `32766`.
  final pulumi.Input<int?>? policyRuleNumber;
  /// Protocol number to match (e.g., `6` for TCP, `17` for UDP). If not specified, all protocols are matched.
  final pulumi.Input<String?>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Source CIDR block to match. If not specified, all source CIDR blocks are matched.
  final pulumi.Input<String?>? sourceCidrBlock;
  final pulumi.Input<String?>? sourcePortRange;
  final pulumi.Input<String?>? sourceTransitGatewayAttachmentId;
  /// Source attachment resource type to match. Valid values are `vpc`, `vpn`, `direct-connect-gateway`, `connect`, `peering`, `tgw-peering`.
  final pulumi.Input<String?>? sourceTransitGatewayAttachmentType;
  final pulumi.Input<MeteringPolicyEntryTimeouts?>? timeouts;
  /// EC2 Transit Gateway Metering Policy identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? transitGatewayMeteringPolicyId;

  /// Creates a new [MeteringPolicyEntryState].
  /// [destinationCidrBlock] Destination CIDR block to match. If not specified, all destination CIDR blocks are matched.
  /// [destinationPortRange] Optional.
  /// [destinationTransitGatewayAttachmentId] Optional.
  /// [destinationTransitGatewayAttachmentType] Destination attachment resource type to match. Valid values are `vpc`, `vpn`, `direct-connect-gateway`, `connect`, `peering`, `tgw-peering`.
  /// [meteredAccount] The account to charge for matching traffic. Valid values are `source-attachment-owner` or `destination-attachment-owner`.
  /// [policyRuleNumber] Rule number for this entry. Lower numbers have higher priority. Valid values are between `1` and `32766`.
  /// [protocol] Protocol number to match (e.g., `6` for TCP, `17` for UDP). If not specified, all protocols are matched.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceCidrBlock] Source CIDR block to match. If not specified, all source CIDR blocks are matched.
  /// [sourcePortRange] Optional.
  /// [sourceTransitGatewayAttachmentId] Optional.
  /// [sourceTransitGatewayAttachmentType] Source attachment resource type to match. Valid values are `vpc`, `vpn`, `direct-connect-gateway`, `connect`, `peering`, `tgw-peering`.
  /// [timeouts] Optional.
  /// [transitGatewayMeteringPolicyId] EC2 Transit Gateway Metering Policy identifier.
  const MeteringPolicyEntryState({
    this.destinationCidrBlock,
    this.destinationPortRange,
    this.destinationTransitGatewayAttachmentId,
    this.destinationTransitGatewayAttachmentType,
    this.meteredAccount,
    this.policyRuleNumber,
    this.protocol,
    this.region,
    this.sourceCidrBlock,
    this.sourcePortRange,
    this.sourceTransitGatewayAttachmentId,
    this.sourceTransitGatewayAttachmentType,
    this.timeouts,
    this.transitGatewayMeteringPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': ?destinationCidrBlock,
      'destinationPortRange': ?destinationPortRange,
      'destinationTransitGatewayAttachmentId': ?destinationTransitGatewayAttachmentId,
      'destinationTransitGatewayAttachmentType': ?destinationTransitGatewayAttachmentType,
      'meteredAccount': ?meteredAccount,
      'policyRuleNumber': ?policyRuleNumber,
      'protocol': ?protocol,
      'region': ?region,
      'sourceCidrBlock': ?sourceCidrBlock,
      'sourcePortRange': ?sourcePortRange,
      'sourceTransitGatewayAttachmentId': ?sourceTransitGatewayAttachmentId,
      'sourceTransitGatewayAttachmentType': ?sourceTransitGatewayAttachmentType,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MeteringPolicyEntryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitGatewayMeteringPolicyId': ?transitGatewayMeteringPolicyId,
    };
  }

  factory MeteringPolicyEntryState.fromMap(Map<String, dynamic> map) {
    return MeteringPolicyEntryState(
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRange: (() { final guardedValue = map['destinationPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationTransitGatewayAttachmentId: (() { final guardedValue = map['destinationTransitGatewayAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationTransitGatewayAttachmentType: (() { final guardedValue = map['destinationTransitGatewayAttachmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meteredAccount: (() { final guardedValue = map['meteredAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyRuleNumber: (() { final guardedValue = map['policyRuleNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCidrBlock: (() { final guardedValue = map['sourceCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRange: (() { final guardedValue = map['sourcePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceTransitGatewayAttachmentId: (() { final guardedValue = map['sourceTransitGatewayAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceTransitGatewayAttachmentType: (() { final guardedValue = map['sourceTransitGatewayAttachmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MeteringPolicyEntryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transitGatewayMeteringPolicyId: (() { final guardedValue = map['transitGatewayMeteringPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
