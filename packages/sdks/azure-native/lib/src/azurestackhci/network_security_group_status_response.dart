// ignore_for_file: unused_element, unnecessary_cast

import 'network_security_group_status_provisioning_status_response.dart';

/// The observed state of network security group
class NetworkSecurityGroupStatusResponse {
  /// NetworkSecurityGroup provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// network security group provisioning status
  final NetworkSecurityGroupStatusProvisioningStatusResponse? provisioningStatus;

  /// Creates a new [NetworkSecurityGroupStatusResponse].
  /// [errorCode] NetworkSecurityGroup provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] network security group provisioning status
  NetworkSecurityGroupStatusResponse({
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

  factory NetworkSecurityGroupStatusResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupStatusResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : NetworkSecurityGroupStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

