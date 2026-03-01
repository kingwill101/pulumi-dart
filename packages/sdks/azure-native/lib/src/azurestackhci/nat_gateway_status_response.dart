// ignore_for_file: unused_element, unnecessary_cast

import 'nat_gateway_status_provisioning_status_response.dart';

/// Nat Gateway resource status
class NatGatewayStatusResponse {
  /// NatGateway provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// NatGateway provisioning status
  final NatGatewayStatusProvisioningStatusResponse? provisioningStatus;

  /// Creates a new [NatGatewayStatusResponse].
  /// [errorCode] NatGateway provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] NatGateway provisioning status
  NatGatewayStatusResponse({
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

  factory NatGatewayStatusResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewayStatusResponse(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : NatGatewayStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

