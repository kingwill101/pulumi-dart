// ignore_for_file: unused_element, unnecessary_cast

import 'application_gateway.dart';
import 'load_balancer.dart';

/// A network profile for network settings of a ContainerGroupProfile. Used to manage load balancer and application gateway backend pools, specifically updating the IP addresses of CGs within the backend pool.
class NetworkProfile {
  /// Application Gateway the CG profile will use to interact with CGs in a backend pool
  final ApplicationGateway? applicationGateway;
  /// LoadBalancer the CG profile will use to interact with CGs in a backend pool
  final LoadBalancer? loadBalancer;

  /// Creates a new [NetworkProfile].
  /// [applicationGateway] Application Gateway the CG profile will use to interact with CGs in a backend pool
  /// [loadBalancer] LoadBalancer the CG profile will use to interact with CGs in a backend pool
  NetworkProfile({
    this.applicationGateway,
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGateway': ?applicationGateway == null ? null : applicationGateway!.toMap(),
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      applicationGateway: map['applicationGateway'] == null ? null : ApplicationGateway.fromMap((map['applicationGateway'] as Map).cast<String, dynamic>()),
      loadBalancer: map['loadBalancer'] == null ? null : LoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
    );
  }
}

