// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_group_status_provisioning_status_response.dart';

/// The observed state of network security group
class NetworkSecurityGroupStatusResponse {
  /// NetworkSecurityGroup provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// network security group provisioning status
  final pulumi.Input<NetworkSecurityGroupStatusProvisioningStatusResponse>? provisioningStatus;

  /// Creates a new [NetworkSecurityGroupStatusResponse].
  /// [errorCode] NetworkSecurityGroup provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] network security group provisioning status
  const NetworkSecurityGroupStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory NetworkSecurityGroupStatusResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupStatusResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

