// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_snapshot_schedule_association_snapshot_schedule_association_args_doc}
/// The set of arguments for SnapshotScheduleAssociation.
/// {@endtemplate}
/// {@macro pulumi_redshift_snapshot_schedule_association_snapshot_schedule_association_args_doc}
class SnapshotScheduleAssociationArgs {
  /// The cluster identifier.
  final pulumi.Input<String> clusterIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The snapshot schedule identifier.
  final pulumi.Input<String> scheduleIdentifier;

  /// Creates a new [SnapshotScheduleAssociationArgs].
  /// [clusterIdentifier] The cluster identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleIdentifier] The snapshot schedule identifier.
  const SnapshotScheduleAssociationArgs({
    required this.clusterIdentifier,
    this.region,
    required this.scheduleIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
      'region': ?region,
      'scheduleIdentifier': scheduleIdentifier,
    };
  }

  factory SnapshotScheduleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotScheduleAssociationArgs(
      clusterIdentifier: pulumi.Input.fromValue(map['clusterIdentifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleIdentifier: pulumi.Input.fromValue(map['scheduleIdentifier'] as String),
    );
  }
}

