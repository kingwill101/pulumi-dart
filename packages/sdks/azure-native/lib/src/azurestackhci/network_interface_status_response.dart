// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_status_provisioning_status_response.dart';

/// The observed state of network interfaces
class NetworkInterfaceStatusResponse {
  /// NetworkInterface provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// Network interface provisioning status
  final pulumi.Input<NetworkInterfaceStatusProvisioningStatusResponse>? provisioningStatus;

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
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceStatusResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceStatusResponse(
      errorCode: map['errorCode'] == null ? null : (map['errorCode']! as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage']! as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (NetworkInterfaceStatusProvisioningStatusResponse.fromMap((map['provisioningStatus']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

