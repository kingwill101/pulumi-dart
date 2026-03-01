// ignore_for_file: unused_element, unnecessary_cast

import 'application_gateway_response.dart';
import 'load_balancer_response.dart';

/// A network profile for network settings of a ContainerGroupProfile. Used to manage load balancer and application gateway backend pools, specifically updating the IP addresses of CGs within the backend pool.
class NetworkProfileResponse {
  /// Application Gateway the CG profile will use to interact with CGs in a backend pool
  final ApplicationGatewayResponse? applicationGateway;
  /// LoadBalancer the CG profile will use to interact with CGs in a backend pool
  final LoadBalancerResponse? loadBalancer;

  /// Creates a new [NetworkProfileResponse].
  /// [applicationGateway] Application Gateway the CG profile will use to interact with CGs in a backend pool
  /// [loadBalancer] LoadBalancer the CG profile will use to interact with CGs in a backend pool
  NetworkProfileResponse({
    this.applicationGateway,
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGateway': ?applicationGateway == null ? null : applicationGateway!.toMap(),
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      applicationGateway: map['applicationGateway'] == null ? null : ApplicationGatewayResponse.fromMap((map['applicationGateway'] as Map).cast<String, dynamic>()),
      loadBalancer: map['loadBalancer'] == null ? null : LoadBalancerResponse.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
    );
  }
}

