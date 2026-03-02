// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_server.dart';

/// {@template pulumi_ens_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_ens_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// The list of backend servers. See `backend_servers` below.
  final pulumi.Input<List<LoadBalancerBackendServer>>? backendServers;
  /// The ID of the ENS node.
  final pulumi.Input<String> ensRegionId;
  /// Name of the Server Load Balancer instance. The length is 1~80 English or Chinese characters. When this parameter is not specified, the system randomly assigns an instance name. Cannot start with http:// and https.
  final pulumi.Input<String>? loadBalancerName;
  /// Specifications of the Server Load Balancer instance. Optional values: elb.s1.small,elb.s3.medium,elb.s2.small,elb.s2.medium,elb.s3.small.
  final pulumi.Input<String> loadBalancerSpec;
  /// The network ID of the created edge load balancing (ELB) instance.
  final pulumi.Input<String> networkId;
  /// Server Load Balancer Instance Payment Type. Value:PayAsYouGo
  final pulumi.Input<String> paymentType;
  /// The ID of the vSwitch to which the VPC instance belongs.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [LoadBalancerArgs].
  /// [backendServers] The list of backend servers. See `backend_servers` below.
  /// [ensRegionId] The ID of the ENS node.
  /// [loadBalancerName] Name of the Server Load Balancer instance. The length is 1~80 English or Chinese characters. When this parameter is not specified, the system randomly assigns an instance name. Cannot start with http:// and https.
  /// [loadBalancerSpec] Specifications of the Server Load Balancer instance. Optional values: elb.s1.small,elb.s3.medium,elb.s2.small,elb.s2.medium,elb.s3.small.
  /// [networkId] The network ID of the created edge load balancing (ELB) instance.
  /// [paymentType] Server Load Balancer Instance Payment Type. Value:PayAsYouGo
  /// [vswitchId] The ID of the vSwitch to which the VPC instance belongs.
  LoadBalancerArgs({
    this.backendServers,
    required this.ensRegionId,
    this.loadBalancerName,
    required this.loadBalancerSpec,
    required this.networkId,
    required this.paymentType,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendServers': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendServer>, List<Map<String, dynamic>>>(backendServers, (value) => pulumi.Input.encodeList<LoadBalancerBackendServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ensRegionId': ensRegionId,
      'loadBalancerName': ?loadBalancerName,
      'loadBalancerSpec': loadBalancerSpec,
      'networkId': networkId,
      'paymentType': paymentType,
      'vswitchId': vswitchId,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      backendServers: map['backendServers'] == null ? null : (pulumi.Input.decodeList<LoadBalancerBackendServer>(map['backendServers'], (value) => LoadBalancerBackendServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ensRegionId: (map['ensRegionId'] as String).input(),
      loadBalancerName: map['loadBalancerName'] == null ? null : (map['loadBalancerName'] as String).input(),
      loadBalancerSpec: (map['loadBalancerSpec'] as String).input(),
      networkId: (map['networkId'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

