// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkStatusResponseProvisioningStatus {
  /// The ID of the operation performed on the virtual network
  final pulumi.Input<String>? operationId;

  /// The status of the operation performed on the virtual network [Succeeded, Failed, InProgress]
  final pulumi.Input<String>? status;

  /// Creates a new [VirtualNetworkStatusResponseProvisioningStatus].
  /// [operationId] The ID of the operation performed on the virtual network
  /// [status] The status of the operation performed on the virtual network [Succeeded, Failed, InProgress]
  VirtualNetworkStatusResponseProvisioningStatus({
    this.operationId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'operationId': ?operationId, 'status': ?status};
  }

  factory VirtualNetworkStatusResponseProvisioningStatus.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworkStatusResponseProvisioningStatus(
      operationId: (() {
        final guardedValue = map['operationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
