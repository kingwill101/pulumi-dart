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
  ApplicationSnapshotState({
    pulumi.Output<String>? applicationName,
    pulumi.Output<int>? applicationVersionId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? snapshotCreationTimestamp,
    pulumi.Output<String>? snapshotName,
  }) :
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      applicationVersionId = pulumi.Input.asOptionalInput<int>(applicationVersionId),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotCreationTimestamp = pulumi.Input.asOptionalInput<String>(snapshotCreationTimestamp),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName);

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
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      applicationVersionId: map['applicationVersionId'] == null ? null : pulumi.Output.create<int>(map['applicationVersionId'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotCreationTimestamp: map['snapshotCreationTimestamp'] == null ? null : pulumi.Output.create<String>(map['snapshotCreationTimestamp'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
    );
  }
}

