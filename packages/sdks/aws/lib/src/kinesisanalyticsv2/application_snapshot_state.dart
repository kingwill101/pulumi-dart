// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationSnapshot resources.
class ApplicationSnapshotState {
  /// The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created.
  final pulumi.Input<String>? applicationName;
  /// The current application version ID when the snapshot was created.
  final pulumi.Input<int>? applicationVersionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The timestamp of the application snapshot.
  final pulumi.Input<String>? snapshotCreationTimestamp;
  /// The name of the application snapshot.
  final pulumi.Input<String>? snapshotName;

  /// Creates a new [ApplicationSnapshotState].
  /// [applicationName] The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created.
  /// [applicationVersionId] The current application version ID when the snapshot was created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotCreationTimestamp] The timestamp of the application snapshot.
  /// [snapshotName] The name of the application snapshot.
  const ApplicationSnapshotState({
    this.applicationName,
    this.applicationVersionId,
    this.region,
    this.snapshotCreationTimestamp,
    this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'applicationVersionId': ?applicationVersionId,
      'region': ?region,
      'snapshotCreationTimestamp': ?snapshotCreationTimestamp,
      'snapshotName': ?snapshotName,
    };
  }

  factory ApplicationSnapshotState.fromMap(Map<String, dynamic> map) {
    return ApplicationSnapshotState(
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationVersionId: (() { final guardedValue = map['applicationVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotCreationTimestamp: (() { final guardedValue = map['snapshotCreationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
