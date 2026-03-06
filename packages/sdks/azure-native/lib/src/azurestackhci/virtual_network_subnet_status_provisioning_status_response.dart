// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of virtual network subnet operations
class VirtualNetworkSubnetStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the virtual network subnet
  final pulumi.Input<String>? operationId;
  /// The status of the operation performed on the virtual network subnet [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [VirtualNetworkSubnetStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the virtual network subnet
  /// [status] The status of the operation performed on the virtual network subnet [Succeeded, Failed, InProgress]
  const VirtualNetworkSubnetStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory VirtualNetworkSubnetStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetStatusProvisioningStatusResponse(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

