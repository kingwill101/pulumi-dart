// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_server.dart';

/// Input properties used for looking up and filtering LoadBalancer resources.
class LoadBalancerState {
  /// The list of backend servers. See `backend_servers` below.
  final pulumi.Input<List<LoadBalancerBackendServer>>? backendServers;
  /// The creation Time (UTC) of the load balancing instance.
  final pulumi.Input<String>? createTime;
  /// The ID of the ENS node.
  final pulumi.Input<String>? ensRegionId;
  /// Name of the Server Load Balancer instance. The length is 1~80 English or Chinese characters. When this parameter is not specified, the system randomly assigns an instance name. Cannot start with http:// and https.
  final pulumi.Input<String>? loadBalancerName;
  /// Specifications of the Server Load Balancer instance. Optional values: elb.s1.small,elb.s3.medium,elb.s2.small,elb.s2.medium,elb.s3.small.
  final pulumi.Input<String>? loadBalancerSpec;
  /// The network ID of the created edge load balancing (ELB) instance.
  final pulumi.Input<String>? networkId;
  /// Server Load Balancer Instance Payment Type. Value:PayAsYouGo
  final pulumi.Input<String>? paymentType;
  /// The status of the SLB instance.
  final pulumi.Input<String>? status;
  /// The ID of the vSwitch to which the VPC instance belongs.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [LoadBalancerState].
  /// [backendServers] The list of backend servers. See `backend_servers` below.
  /// [createTime] The creation Time (UTC) of the load balancing instance.
  /// [ensRegionId] The ID of the ENS node.
  /// [loadBalancerName] Name of the Server Load Balancer instance. The length is 1~80 English or Chinese characters. When this parameter is not specified, the system randomly assigns an instance name. Cannot start with http:// and https.
  /// [loadBalancerSpec] Specifications of the Server Load Balancer instance. Optional values: elb.s1.small,elb.s3.medium,elb.s2.small,elb.s2.medium,elb.s3.small.
  /// [networkId] The network ID of the created edge load balancing (ELB) instance.
  /// [paymentType] Server Load Balancer Instance Payment Type. Value:PayAsYouGo
  /// [status] The status of the SLB instance.
  /// [vswitchId] The ID of the vSwitch to which the VPC instance belongs.
  LoadBalancerState({
    this.backendServers,
    this.createTime,
    this.ensRegionId,
    this.loadBalancerName,
    this.loadBalancerSpec,
    this.networkId,
    this.paymentType,
    this.status,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendServers': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendServer>, List<Map<String, dynamic>>>(backendServers, (value) => pulumi.Input.encodeList<LoadBalancerBackendServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'ensRegionId': ?ensRegionId,
      'loadBalancerName': ?loadBalancerName,
      'loadBalancerSpec': ?loadBalancerSpec,
      'networkId': ?networkId,
      'paymentType': ?paymentType,
      'status': ?status,
      'vswitchId': ?vswitchId,
    };
  }

  factory LoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerState(
      backendServers: map['backendServers'] == null ? null : (pulumi.Input.decodeList<LoadBalancerBackendServer>(map['backendServers'], (value) => LoadBalancerBackendServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      ensRegionId: map['ensRegionId'] == null ? null : (map['ensRegionId'] as String).input(),
      loadBalancerName: map['loadBalancerName'] == null ? null : (map['loadBalancerName'] as String).input(),
      loadBalancerSpec: map['loadBalancerSpec'] == null ? null : (map['loadBalancerSpec'] as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

