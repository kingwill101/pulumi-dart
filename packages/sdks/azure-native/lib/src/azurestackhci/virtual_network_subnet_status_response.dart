// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_subnet_status_provisioning_status_response.dart';

/// Status of virtual network subnet operations
class VirtualNetworkSubnetStatusResponse {
  /// VirtualNetworkSubnet provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// Public IP provisioning status
  final pulumi.Input<VirtualNetworkSubnetStatusProvisioningStatusResponse>? provisioningStatus;

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
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkSubnetStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkSubnetStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetStatusResponse(
      errorCode: map['errorCode'] == null ? null : (map['errorCode'] as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (VirtualNetworkSubnetStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

