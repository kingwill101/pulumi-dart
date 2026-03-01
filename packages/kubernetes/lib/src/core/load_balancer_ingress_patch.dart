// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_status_patch.dart';

/// LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
class LoadBalancerIngressPatch {
  /// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
  final String? hostname;
  /// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
  final String? ip;
  /// IPMode specifies how the load-balancer IP behaves, and may only be specified when the ip field is specified. Setting this to "VIP" indicates that traffic is delivered to the node with the destination set to the load-balancer's IP and port. Setting this to "Proxy" indicates that traffic is delivered to the node or pod with the destination set to the node's IP and node port or the pod's IP and port. Service implementations may use this information to adjust traffic routing.
  final String? ipMode;
  /// Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
  final List<PortStatusPatch>? ports;

  /// Creates a new [LoadBalancerIngressPatch].
  /// [hostname] Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
  /// [ip] IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
  /// [ipMode] IPMode specifies how the load-balancer IP behaves, and may only be specified when the ip field is specified. Setting this to "VIP" indicates that traffic is delivered to the node with the destination set to the load-balancer's IP and port. Setting this to "Proxy" indicates that traffic is delivered to the node or pod with the destination set to the node's IP and node port or the pod's IP and port. Service implementations may use this information to adjust traffic routing.
  /// [ports] Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
  LoadBalancerIngressPatch({
    this.hostname,
    this.ip,
    this.ipMode,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ip': ?ip,
      'ipMode': ?ipMode,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<PortStatusPatch, Map<String, dynamic>>(ports!, (value) => value.toMap()),
    };
  }

  factory LoadBalancerIngressPatch.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIngressPatch(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      ip: map['ip'] == null ? null : map['ip'] as String,
      ipMode: map['ipMode'] == null ? null : map['ipMode'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<PortStatusPatch>(map['ports'], (value) => PortStatusPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

