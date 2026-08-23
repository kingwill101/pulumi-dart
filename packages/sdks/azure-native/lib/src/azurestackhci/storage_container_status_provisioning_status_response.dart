// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage container provisioning status
class StorageContainerStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the storage container
  final pulumi.Input<String>? operationId;
  /// The status of the operation performed on the storage container [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [StorageContainerStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the storage container
  /// [status] The status of the operation performed on the storage container [Succeeded, Failed, InProgress]
  const StorageContainerStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory StorageContainerStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return StorageContainerStatusProvisioningStatusResponse(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
