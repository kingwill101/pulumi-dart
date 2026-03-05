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
    required this.applicationName,
    this.region,
    required this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'region': ?region,
      'snapshotName': snapshotName,
    };
  }

  factory ApplicationSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationSnapshotArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotName: pulumi.Input.fromValue(map['snapshotName'] as String),
    );
  }
}

