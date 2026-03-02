// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_container_status_provisioning_status_response.dart';

/// The observed state of storage containers
class StorageContainerStatusResponse {
  /// Amount of space available on the disk in MB
  final pulumi.Input<double>? availableSizeMB;
  /// Total size of the disk in MB
  final pulumi.Input<double>? containerSizeMB;
  /// StorageContainer provisioning error code
  final pulumi.Input<String>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;
  /// Storage container's provisioning status
  final pulumi.Input<StorageContainerStatusProvisioningStatusResponse>? provisioningStatus;

  /// Creates a new [StorageContainerStatusResponse].
  /// [availableSizeMB] Amount of space available on the disk in MB
  /// [containerSizeMB] Total size of the disk in MB
  /// [errorCode] StorageContainer provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Storage container's provisioning status
  StorageContainerStatusResponse({
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
      availableSizeMB: map['availableSizeMB'] == null ? null : (map['availableSizeMB'] as double).input(),
      containerSizeMB: map['containerSizeMB'] == null ? null : (map['containerSizeMB'] as double).input(),
      errorCode: map['errorCode'] == null ? null : (map['errorCode'] as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (StorageContainerStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

