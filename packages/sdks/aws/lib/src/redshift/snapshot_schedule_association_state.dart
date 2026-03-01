// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnapshotScheduleAssociation resources.
class SnapshotScheduleAssociationState {
  /// The cluster identifier.
  final pulumi.Input<String>? clusterIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The snapshot schedule identifier.
  final pulumi.Input<String>? scheduleIdentifier;

  /// Creates a new [SnapshotScheduleAssociationState].
  /// [clusterIdentifier] The cluster identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleIdentifier] The snapshot schedule identifier.
  SnapshotScheduleAssociationState({
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scheduleIdentifier,
  }) :
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduleIdentifier = pulumi.Input.asOptionalInput<String>(scheduleIdentifier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': ?clusterIdentifier,
      'region': ?region,
      'scheduleIdentifier': ?scheduleIdentifier,
    };
  }

  factory SnapshotScheduleAssociationState.fromMap(Map<String, dynamic> map) {
    return SnapshotScheduleAssociationState(
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scheduleIdentifier: map['scheduleIdentifier'] == null ? null : pulumi.Output.create<String>(map['scheduleIdentifier'] as String),
    );
  }
}

