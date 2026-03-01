// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_network_subnet_status_provisioning_status_response.dart';

/// Status of virtual network subnet operations
class VirtualNetworkSubnetStatusResponse {
  /// VirtualNetworkSubnet provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// Public IP provisioning status
  final VirtualNetworkSubnetStatusProvisioningStatusResponse? provisioningStatus;

  /// Creates a new [VirtualNetworkSubnetStatusResponse].
  /// [errorCode] VirtualNetworkSubnet provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Public IP provisioning status
  VirtualNetworkSubnetStatusResponse({
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

  factory VirtualNetworkSubnetStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetStatusResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : VirtualNetworkSubnetStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

