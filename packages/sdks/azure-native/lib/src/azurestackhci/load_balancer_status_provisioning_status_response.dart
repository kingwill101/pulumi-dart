// ignore_for_file: unused_element, unnecessary_cast


/// Status of load balancer operations
class LoadBalancerStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the load balancer
  final String? operationId;
  /// The status of the operation performed on the loadbalancer [Succeeded, Failed, InProgress]
  final String status;

  /// Creates a new [LoadBalancerStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the load balancer
  /// [status] The status of the operation performed on the loadbalancer [Succeeded, Failed, InProgress]
  LoadBalancerStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory LoadBalancerStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerStatusProvisioningStatusResponse(
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      status: map['status'] as String,
    );
  }
}

