// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_status_provisioning_status_response.dart';

/// Nat Gateway resource status
class NatGatewayStatusResponse {
  /// NatGateway provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// NatGateway provisioning status
  final pulumi.Input<NatGatewayStatusProvisioningStatusResponse>? provisioningStatus;

  /// Creates a new [NatGatewayStatusResponse].
  /// [errorCode] NatGateway provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] NatGateway provisioning status
  const NatGatewayStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<NatGatewayStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory NatGatewayStatusResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewayStatusResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NatGatewayStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

