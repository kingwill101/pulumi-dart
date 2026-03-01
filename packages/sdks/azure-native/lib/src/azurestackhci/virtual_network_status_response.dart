// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_network_status_response_provisioning_status.dart';

/// The observed state of virtual networks
class VirtualNetworkStatusResponse {
  /// VirtualNetwork provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  final VirtualNetworkStatusResponseProvisioningStatus? provisioningStatus;

  /// Creates a new [VirtualNetworkStatusResponse].
  /// [errorCode] VirtualNetwork provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Optional.
  VirtualNetworkStatusResponse({
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

  factory VirtualNetworkStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkStatusResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : VirtualNetworkStatusResponseProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

