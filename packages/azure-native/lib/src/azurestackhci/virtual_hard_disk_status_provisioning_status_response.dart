// ignore_for_file: unused_element, unnecessary_cast


/// VHD Status provisioning status
class VirtualHardDiskStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the virtual hard disk
  final String? operationId;
  /// The status of the operation performed on the virtual hard disk [Succeeded, Failed, InProgress]
  final String status;

  /// Creates a new [VirtualHardDiskStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the virtual hard disk
  /// [status] The status of the operation performed on the virtual hard disk [Succeeded, Failed, InProgress]
  VirtualHardDiskStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory VirtualHardDiskStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskStatusProvisioningStatusResponse(
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      status: map['status'] as String,
    );
  }
}

