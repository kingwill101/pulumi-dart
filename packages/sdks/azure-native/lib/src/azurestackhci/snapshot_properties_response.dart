// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data_response.dart';
import 'snapshot_status_response.dart';

/// Properties under the snapshot resource
class SnapshotPropertiesResponse {
  /// Data used when creating a snapshot
  final pulumi.Input<CreationDataResponse?>? creationData;
  /// The size of the disk in bytes.
  final pulumi.Input<double> diskSizeBytes;
  /// Provisioning state of the snapshot.
  final pulumi.Input<String> provisioningState;
  /// The observed state of snapshots
  final pulumi.Input<SnapshotStatusResponse> status;
  /// The time when the snapshot was created.
  final pulumi.Input<String> timeCreated;
  /// Unique identifier for the snapshot.
  final pulumi.Input<String> uniqueId;

  /// Creates a new [SnapshotPropertiesResponse].
  /// [creationData] Data used when creating a snapshot
  /// [diskSizeBytes] The size of the disk in bytes.
  /// [provisioningState] Provisioning state of the snapshot.
  /// [status] The observed state of snapshots
  /// [timeCreated] The time when the snapshot was created.
  /// [uniqueId] Unique identifier for the snapshot.
  const SnapshotPropertiesResponse({
    this.creationData,
    required this.diskSizeBytes,
    required this.provisioningState,
    required this.status,
    required this.timeCreated,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationData': ?pulumi.Input.mapOptionalInputValue<CreationDataResponse, Map<String, dynamic>>(creationData, (value) => value.toMap()),
      'diskSizeBytes': diskSizeBytes,
      'provisioningState': provisioningState,
      'status': pulumi.Input.mapInputValue<SnapshotStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'timeCreated': timeCreated,
      'uniqueId': uniqueId,
    };
  }

  factory SnapshotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotPropertiesResponse(
      creationData: (() { final guardedValue = map['creationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskSizeBytes: pulumi.Input.fromValue((map['diskSizeBytes'] as num).toDouble()),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: pulumi.Input.fromValue(SnapshotStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
      timeCreated: pulumi.Input.fromValue(map['timeCreated'] as String),
      uniqueId: pulumi.Input.fromValue(map['uniqueId'] as String),
    );
  }
}
