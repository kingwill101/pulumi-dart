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
    required pulumi.Output<String> ensRegionId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? natName,
    required pulumi.Output<String> networkId,
    required pulumi.Output<String> vswitchId,
  }) :
      ensRegionId = pulumi.Input.asInput<String>(ensRegionId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      natName = pulumi.Input.asOptionalInput<String>(natName),
      networkId = pulumi.Input.asInput<String>(networkId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      ensRegionId: pulumi.Output.create<String>(map['ensRegionId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      natName: map['natName'] == null ? null : pulumi.Output.create<String>(map['natName'] as String),
      networkId: pulumi.Output.create<String>(map['networkId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

