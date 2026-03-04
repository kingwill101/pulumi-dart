// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of load balancer operations
class LoadBalancerStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the load balancer
  final pulumi.Input<String>? operationId;

  /// The status of the operation performed on the loadbalancer [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [LoadBalancerStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the load balancer
  /// [status] The status of the operation performed on the loadbalancer [Succeeded, Failed, InProgress]
  LoadBalancerStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'operationId': ?operationId, 'status': status};
  }

  factory LoadBalancerStatusProvisioningStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerStatusProvisioningStatusResponse(
      operationId: (() {
        final guardedValue = map['operationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
