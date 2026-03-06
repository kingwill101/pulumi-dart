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
  const NetworkInterfaceStatusResponse({
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
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

