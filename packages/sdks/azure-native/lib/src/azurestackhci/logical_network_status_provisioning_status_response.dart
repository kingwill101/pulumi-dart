// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the status of the provisioning.
class LogicalNetworkStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the logical network
  final pulumi.Input<String>? operationId;
  /// The status of the operation performed on the logical network [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [LogicalNetworkStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the logical network
  /// [status] The status of the operation performed on the logical network [Succeeded, Failed, InProgress]
  const LogicalNetworkStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory LogicalNetworkStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkStatusProvisioningStatusResponse(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

