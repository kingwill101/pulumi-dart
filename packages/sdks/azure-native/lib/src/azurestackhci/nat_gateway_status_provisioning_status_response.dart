// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning status of Nat Gateway
class NatGatewayStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the nat gateway
  final pulumi.Input<String>? operationId;
  /// The status of the operation performed on the nat gateway [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [NatGatewayStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the nat gateway
  /// [status] The status of the operation performed on the nat gateway [Succeeded, Failed, InProgress]
  NatGatewayStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory NatGatewayStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewayStatusProvisioningStatusResponse(
      operationId: map['operationId'] == null ? null : (map['operationId']! as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

