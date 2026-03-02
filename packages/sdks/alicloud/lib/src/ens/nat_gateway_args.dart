// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_nat_gateway_nat_gateway_args_doc}
/// The set of arguments for NatGateway.
/// {@endtemplate}
/// {@macro pulumi_ens_nat_gateway_nat_gateway_args_doc}
class NatGatewayArgs {
  /// The ID of the ENS node.
  final pulumi.Input<String> ensRegionId;
  /// NAT specifications. Value: `enat.default`.
  final pulumi.Input<String>? instanceType;
  /// The name of the NAT gateway. The length is 1 to 128 characters, but it cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? natName;
  /// The network ID.
  final pulumi.Input<String> networkId;
  /// The vSwitch ID.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [NatGatewayArgs].
  /// [ensRegionId] The ID of the ENS node.
  /// [instanceType] NAT specifications. Value: `enat.default`.
  /// [natName] The name of the NAT gateway. The length is 1 to 128 characters, but it cannot start with 'http:// 'or 'https.
  /// [networkId] The network ID.
  /// [vswitchId] The vSwitch ID.
  NatGatewayArgs({
    required this.ensRegionId,
    this.instanceType,
    this.natName,
    required this.networkId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ensRegionId': ensRegionId,
      'instanceType': ?instanceType,
      'natName': ?natName,
      'networkId': networkId,
      'vswitchId': vswitchId,
    };
  }

  factory NatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayArgs(
      ensRegionId: (map['ensRegionId'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      natName: map['natName'] == null ? null : (map['natName'] as String).input(),
      networkId: (map['networkId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

