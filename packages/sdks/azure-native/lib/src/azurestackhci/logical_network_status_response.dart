// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logical_network_status_provisioning_status_response.dart';

/// The observed state of logical networks
class LogicalNetworkStatusResponse {
  /// LogicalNetwork provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// Logical network provisioning status
  final pulumi.Input<LogicalNetworkStatusProvisioningStatusResponse>? provisioningStatus;

  /// Creates a new [LogicalNetworkStatusResponse].
  /// [errorCode] LogicalNetwork provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Logical network provisioning status
  LogicalNetworkStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<LogicalNetworkStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory LogicalNetworkStatusResponse.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkStatusResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogicalNetworkStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

