// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// network security group provisioning status
class NetworkSecurityGroupStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the network security group
  final pulumi.Input<String>? operationId;

  /// The status of the operation performed on the network security group [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [NetworkSecurityGroupStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the network security group
  /// [status] The status of the operation performed on the network security group [Succeeded, Failed, InProgress]
  NetworkSecurityGroupStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'operationId': ?operationId, 'status': status};
  }

  factory NetworkSecurityGroupStatusProvisioningStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkSecurityGroupStatusProvisioningStatusResponse(
      operationId: (() {
        final guardedValue = map['operationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
