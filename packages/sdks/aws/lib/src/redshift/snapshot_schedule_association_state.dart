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
  const SnapshotScheduleAssociationState({
    this.clusterIdentifier,
    this.region,
    this.scheduleIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': ?clusterIdentifier,
      'region': ?region,
      'scheduleIdentifier': ?scheduleIdentifier,
    };
  }

  factory SnapshotScheduleAssociationState.fromMap(Map<String, dynamic> map) {
    return SnapshotScheduleAssociationState(
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleIdentifier: (() { final guardedValue = map['scheduleIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
