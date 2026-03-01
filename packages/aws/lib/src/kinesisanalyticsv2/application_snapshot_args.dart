// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kinesisanalyticsv2_application_snapshot_application_snapshot_args_doc}
/// The set of arguments for ApplicationSnapshot.
/// {@endtemplate}
/// {@macro pulumi_kinesisanalyticsv2_application_snapshot_application_snapshot_args_doc}
class ApplicationSnapshotArgs {
  /// The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created.
  final pulumi.Input<String> applicationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the application snapshot.
  final pulumi.Input<String> snapshotName;

  /// Creates a new [ApplicationSnapshotArgs].
  /// [applicationName] The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotName] The name of the application snapshot.
  ApplicationSnapshotArgs({
    required String applicationName,
    String? region,
    required String snapshotName,
  }) : applicationName = pulumi.Input.asInput<String>(applicationName),
       region = pulumi.Input.asOptionalInput<String>(region),
       snapshotName = pulumi.Input.asInput<String>(snapshotName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'region': ?region,
      'snapshotName': snapshotName,
    };
  }

  factory ApplicationSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationSnapshotArgs(
      applicationName: map['applicationName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      snapshotName: map['snapshotName'] as String,
    );
  }
}
