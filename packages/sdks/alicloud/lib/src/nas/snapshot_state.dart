// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snapshot resources.
class SnapshotState {
  /// The description of the snapshot. It must be `2` to `256` characters in length and cannot start with `https://` or `https://`.
  final pulumi.Input<String>? description;
  /// The ID of the file system.
  final pulumi.Input<String>? fileSystemId;
  /// The retention period of the snapshot. Unit: days. Valid values:
  /// * `-1`: The default value. Auto snapshots are permanently retained. After the number of auto snapshots exceeds the upper limit, the earliest auto snapshot is automatically deleted.
  final pulumi.Input<int>? retentionDays;
  /// SnapshotName. It must be `2` to `128` characters in length and must start with a letter, but cannot start with `https://` or `https://`.
  final pulumi.Input<String>? snapshotName;
  /// The status of the snapshot.
  final pulumi.Input<String>? status;

  /// Creates a new [SnapshotState].
  /// [description] The description of the snapshot. It must be `2` to `256` characters in length and cannot start with `https://` or `https://`.
  /// [fileSystemId] The ID of the file system.
  /// [retentionDays] The retention period of the snapshot. Unit: days. Valid values:
  /// [snapshotName] SnapshotName. It must be `2` to `128` characters in length and must start with a letter, but cannot start with `https://` or `https://`.
  /// [status] The status of the snapshot.
  SnapshotState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<int>? retentionDays,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      retentionDays = pulumi.Input.asOptionalInput<int>(retentionDays),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fileSystemId': ?fileSystemId,
      'retentionDays': ?retentionDays,
      'snapshotName': ?snapshotName,
      'status': ?status,
    };
  }

  factory SnapshotState.fromMap(Map<String, dynamic> map) {
    return SnapshotState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      retentionDays: map['retentionDays'] == null ? null : pulumi.Output.create<int>(map['retentionDays'] as int),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

