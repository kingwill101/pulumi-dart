// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_nat_gateway_vpc.dart';

/// {@template pulumi_index_vpc_nat_gateway_vpc_nat_gateway_args_doc}
/// The set of arguments for VpcNatGateway.
/// {@endtemplate}
/// {@macro pulumi_index_vpc_nat_gateway_vpc_nat_gateway_args_doc}
class VpcNatGatewayArgs {
  /// The egress timeout value for ICMP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? icmpTimeoutSeconds;
  /// The name of the VPC NAT Gateway.
  final pulumi.Input<String>? name;
  /// ID of the project to which the VPC NAT Gateway will be assigned.
  final pulumi.Input<String>? projectId;
  /// The region for the VPC NAT Gateway.
  final pulumi.Input<String> region;
  /// The size of the VPC NAT Gateway.
  final pulumi.Input<int> size;
  /// The egress timeout value for TCP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? tcpTimeoutSeconds;
  /// The type of the VPC NAT Gateway.
  final pulumi.Input<String> type;
  /// The egress timeout value for UDP connections of the VPC NAT Gateway.
  final pulumi.Input<int>? udpTimeoutSeconds;
  /// The ingress VPC configuration of the VPC NAT Gateway, the supported arguments are
  /// documented below.
  final pulumi.Input<List<VpcNatGatewayVpc>> vpcs;

  /// Creates a new [VpcNatGatewayArgs].
  /// [icmpTimeoutSeconds] The egress timeout value for ICMP connections of the VPC NAT Gateway.
  /// [name] The name of the VPC NAT Gateway.
  /// [projectId] ID of the project to which the VPC NAT Gateway will be assigned.
  /// [region] The region for the VPC NAT Gateway.
  /// [size] The size of the VPC NAT Gateway.
  /// [tcpTimeoutSeconds] The egress timeout value for TCP connections of the VPC NAT Gateway.
  /// [type] The type of the VPC NAT Gateway.
  /// [udpTimeoutSeconds] The egress timeout value for UDP connections of the VPC NAT Gateway.
  /// [vpcs] The ingress VPC configuration of the VPC NAT Gateway, the supported arguments are
  VpcNatGatewayArgs({
    int? icmpTimeoutSeconds,
    String? name,
    String? projectId,
    required String region,
    required int size,
    int? tcpTimeoutSeconds,
    required String type,
    int? udpTimeoutSeconds,
    required List<VpcNatGatewayVpc> vpcs,
  }) :
      icmpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(icmpTimeoutSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asInput<String>(region),
      size = pulumi.Input.asInput<int>(size),
      tcpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(tcpTimeoutSeconds),
      type = pulumi.Input.asInput<String>(type),
      udpTimeoutSeconds = pulumi.Input.asOptionalInput<int>(udpTimeoutSeconds),
      vpcs = pulumi.Input.asInput<List<VpcNatGatewayVpc>>(vpcs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icmpTimeoutSeconds': ?icmpTimeoutSeconds,
      'name': ?name,
      'projectId': ?projectId,
      'region': region,
      'size': size,
      'tcpTimeoutSeconds': ?tcpTimeoutSeconds,
      'type': type,
      'udpTimeoutSeconds': ?udpTimeoutSeconds,
      'vpcs': pulumi.Input.mapInputValue<List<VpcNatGatewayVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<VpcNatGatewayVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpcNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VpcNatGatewayArgs(
      icmpTimeoutSeconds: map['icmpTimeoutSeconds'] == null ? null : map['icmpTimeoutSeconds'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] as String,
      size: map['size'] as int,
      tcpTimeoutSeconds: map['tcpTimeoutSeconds'] == null ? null : map['tcpTimeoutSeconds'] as int,
      type: map['type'] as String,
      udpTimeoutSeconds: map['udpTimeoutSeconds'] == null ? null : map['udpTimeoutSeconds'] as int,
      vpcs: pulumi.Input.decodeList<VpcNatGatewayVpc>(map['vpcs'], (value) => VpcNatGatewayVpc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

