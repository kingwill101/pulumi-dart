// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_container_status_provisioning_status_response.dart';

/// The observed state of storage containers
class StorageContainerStatusResponse {
  /// Amount of space available on the disk in MB
  final pulumi.Input<double?>? availableSizeMB;
  /// Total size of the disk in MB
  final pulumi.Input<double?>? containerSizeMB;
  /// StorageContainer provisioning error code
  final pulumi.Input<String?>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String?>? errorMessage;
  /// Storage container's provisioning status
  final pulumi.Input<StorageContainerStatusProvisioningStatusResponse?>? provisioningStatus;

  /// Creates a new [StorageContainerStatusResponse].
  /// [availableSizeMB] Amount of space available on the disk in MB
  /// [containerSizeMB] Total size of the disk in MB
  /// [errorCode] StorageContainer provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Storage container's provisioning status
  const StorageContainerStatusResponse({
    this.availableSizeMB,
    this.containerSizeMB,
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSizeMB': ?availableSizeMB,
      'containerSizeMB': ?containerSizeMB,
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<StorageContainerStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory StorageContainerStatusResponse.fromMap(Map<String, dynamic> map) {
    return StorageContainerStatusResponse(
      availableSizeMB: (() { final guardedValue = map['availableSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      containerSizeMB: (() { final guardedValue = map['containerSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageContainerStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
