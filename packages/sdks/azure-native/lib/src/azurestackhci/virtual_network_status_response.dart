// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_status_response_provisioning_status.dart';

/// The observed state of virtual networks
class VirtualNetworkStatusResponse {
  /// VirtualNetwork provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  final pulumi.Input<VirtualNetworkStatusResponseProvisioningStatus>? provisioningStatus;

  /// Creates a new [VirtualNetworkStatusResponse].
  /// [errorCode] VirtualNetwork provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Optional.
  const VirtualNetworkStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkStatusResponseProvisioningStatus, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkStatusResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkStatusResponseProvisioningStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
