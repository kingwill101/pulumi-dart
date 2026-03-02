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
      errorCode: map['errorCode'] == null ? null : (map['errorCode']! as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage']! as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (LogicalNetworkStatusProvisioningStatusResponse.fromMap((map['provisioningStatus']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

