// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_response.dart';
import 'load_balancer_response.dart';

/// A network profile for network settings of a ContainerGroupProfile. Used to manage load balancer and application gateway backend pools, specifically updating the IP addresses of CGs within the backend pool.
class NetworkProfileResponse {
  /// Application Gateway the CG profile will use to interact with CGs in a backend pool
  final pulumi.Input<ApplicationGatewayResponse>? applicationGateway;

  /// LoadBalancer the CG profile will use to interact with CGs in a backend pool
  final pulumi.Input<LoadBalancerResponse>? loadBalancer;

  /// Creates a new [NetworkProfileResponse].
  /// [applicationGateway] Application Gateway the CG profile will use to interact with CGs in a backend pool
  /// [loadBalancer] LoadBalancer the CG profile will use to interact with CGs in a backend pool
  NetworkProfileResponse({this.applicationGateway, this.loadBalancer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGateway':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationGatewayResponse,
            Map<String, dynamic>
          >(applicationGateway, (value) => value.toMap()),
      'loadBalancer':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerResponse,
            Map<String, dynamic>
          >(loadBalancer, (value) => value.toMap()),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      applicationGateway: (() {
        final guardedValue = map['applicationGateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationGatewayResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      loadBalancer: (() {
        final guardedValue = map['loadBalancer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
