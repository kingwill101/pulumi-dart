// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_pool_response.dart';

/// LoadBalancer the CG profile will use to interact with CGs in a backend pool
class LoadBalancerResponse {
  /// List of Load Balancer Backend Address Pools.
  final pulumi.Input<List<LoadBalancerBackendAddressPoolResponse>>?
  backendAddressPools;

  /// Creates a new [LoadBalancerResponse].
  /// [backendAddressPools] List of Load Balancer Backend Address Pools.
  LoadBalancerResponse({this.backendAddressPools});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<LoadBalancerBackendAddressPoolResponse>,
            List<Map<String, dynamic>>
          >(
            backendAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  LoadBalancerBackendAddressPoolResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory LoadBalancerResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerResponse(
      backendAddressPools: (() {
        final guardedValue = map['backendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LoadBalancerBackendAddressPoolResponse>(
            guardedValue,
            (value) => LoadBalancerBackendAddressPoolResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
