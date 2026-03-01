// ignore_for_file: unused_element, unnecessary_cast


/// network security group provisioning status
class NetworkSecurityGroupStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the network security group
  final String? operationId;
  /// The status of the operation performed on the network security group [Succeeded, Failed, InProgress]
  final String status;

  /// Creates a new [NetworkSecurityGroupStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the network security group
  /// [status] The status of the operation performed on the network security group [Succeeded, Failed, InProgress]
  NetworkSecurityGroupStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory NetworkSecurityGroupStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupStatusProvisioningStatusResponse(
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      status: map['status'] as String,
    );
  }
}

