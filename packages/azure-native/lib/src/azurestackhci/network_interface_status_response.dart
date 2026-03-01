// ignore_for_file: unused_element, unnecessary_cast

import 'network_interface_status_provisioning_status_response.dart';

/// The observed state of network interfaces
class NetworkInterfaceStatusResponse {
  /// NetworkInterface provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// Network interface provisioning status
  final NetworkInterfaceStatusProvisioningStatusResponse? provisioningStatus;

  /// Creates a new [NetworkInterfaceStatusResponse].
  /// [errorCode] NetworkInterface provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Network interface provisioning status
  NetworkInterfaceStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
    };
  }

  factory NetworkInterfaceStatusResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceStatusResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : NetworkInterfaceStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

