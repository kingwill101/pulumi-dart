// ignore_for_file: unused_element, unnecessary_cast


/// Network interface provisioning status
class NetworkInterfaceStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the network interface
  final String? operationId;
  /// The status of the operation performed on the network interface [Succeeded, Failed, InProgress]
  final String status;

  /// Creates a new [NetworkInterfaceStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the network interface
  /// [status] The status of the operation performed on the network interface [Succeeded, Failed, InProgress]
  NetworkInterfaceStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory NetworkInterfaceStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceStatusProvisioningStatusResponse(
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      status: map['status'] as String,
    );
  }
}

