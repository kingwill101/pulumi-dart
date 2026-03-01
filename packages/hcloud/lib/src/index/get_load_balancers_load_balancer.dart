// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_load_balancer_algorithm.dart';
import 'get_load_balancers_load_balancer_service.dart';
import 'get_load_balancers_load_balancer_target.dart';

class GetLoadBalancersLoadBalancer {
  final List<GetLoadBalancersLoadBalancerAlgorithm> algorithms;
  final bool deleteProtection;
  final int id;
  final String ipv4;
  final String ipv6;
  final Map<String, String> labels;
  final String loadBalancerType;
  final String location;
  final String? name;
  final int networkId;
  final String networkIp;
  final String networkZone;
  final List<GetLoadBalancersLoadBalancerService> services;
  final List<GetLoadBalancersLoadBalancerTarget> targets;

  /// Creates a new [GetLoadBalancersLoadBalancer].
  /// [algorithms] Required.
  /// [deleteProtection] Required.
  /// [id] Required.
  /// [ipv4] Required.
  /// [ipv6] Required.
  /// [labels] Required.
  /// [loadBalancerType] Required.
  /// [location] Required.
  /// [name] Optional.
  /// [networkId] Required.
  /// [networkIp] Required.
  /// [networkZone] Required.
  /// [services] Required.
  /// [targets] Required.
  GetLoadBalancersLoadBalancer({
    required this.algorithms,
    required this.deleteProtection,
    required this.id,
    required this.ipv4,
    required this.ipv6,
    required this.labels,
    required this.loadBalancerType,
    required this.location,
    this.name,
    required this.networkId,
    required this.networkIp,
    required this.networkZone,
    required this.services,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithms': pulumi.Input.encodeList<GetLoadBalancersLoadBalancerAlgorithm, Map<String, dynamic>>(algorithms, (value) => value.toMap()),
      'deleteProtection': deleteProtection,
      'id': id,
      'ipv4': ipv4,
      'ipv6': ipv6,
      'labels': labels,
      'loadBalancerType': loadBalancerType,
      'location': location,
      'name': ?name,
      'networkId': networkId,
      'networkIp': networkIp,
      'networkZone': networkZone,
      'services': pulumi.Input.encodeList<GetLoadBalancersLoadBalancerService, Map<String, dynamic>>(services, (value) => value.toMap()),
      'targets': pulumi.Input.encodeList<GetLoadBalancersLoadBalancerTarget, Map<String, dynamic>>(targets, (value) => value.toMap()),
    };
  }

  factory GetLoadBalancersLoadBalancer.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancer(
      algorithms: pulumi.Input.decodeList<GetLoadBalancersLoadBalancerAlgorithm>(map['algorithms'], (value) => GetLoadBalancersLoadBalancerAlgorithm.fromMap((value as Map).cast<String, dynamic>())),
      deleteProtection: map['deleteProtection'] as bool,
      id: map['id'] as int,
      ipv4: map['ipv4'] as String,
      ipv6: map['ipv6'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      loadBalancerType: map['loadBalancerType'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkId: map['networkId'] as int,
      networkIp: map['networkIp'] as String,
      networkZone: map['networkZone'] as String,
      services: pulumi.Input.decodeList<GetLoadBalancersLoadBalancerService>(map['services'], (value) => GetLoadBalancersLoadBalancerService.fromMap((value as Map).cast<String, dynamic>())),
      targets: pulumi.Input.decodeList<GetLoadBalancersLoadBalancerTarget>(map['targets'], (value) => GetLoadBalancersLoadBalancerTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

