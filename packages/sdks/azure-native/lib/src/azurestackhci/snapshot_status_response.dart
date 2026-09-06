// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_status_provisioning_status_response.dart';

/// The observed state of snapshots
class SnapshotStatusResponse {
  /// Snapshot provisioning error code
  final pulumi.Input<String?>? errorCode;
  /// Descriptive error message
  final pulumi.Input<String?>? errorMessage;
  /// Provisioning status of the snapshot
  final pulumi.Input<SnapshotStatusProvisioningStatusResponse?>? provisioningStatus;

  /// Creates a new [SnapshotStatusResponse].
  /// [errorCode] Snapshot provisioning error code
  /// [errorMessage] Descriptive error message
  /// [provisioningStatus] Provisioning status of the snapshot
  const SnapshotStatusResponse({
    this.errorCode,
    this.errorMessage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<SnapshotStatusProvisioningStatusResponse, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory SnapshotStatusResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotStatusResponse(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotStatusProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
