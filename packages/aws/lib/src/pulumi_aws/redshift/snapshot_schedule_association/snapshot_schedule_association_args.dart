// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SnapshotScheduleAssociation.
class SnapshotScheduleAssociationArgs {
  /// The cluster identifier.
  final pulumi.Input<String> clusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The snapshot schedule identifier.
  final pulumi.Input<String> scheduleIdentifier;

  SnapshotScheduleAssociationArgs({
    required this.clusterIdentifier,
    this.region,
    required this.scheduleIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scheduleIdentifier'] = scheduleIdentifier;
    return map;
  }

  factory SnapshotScheduleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotScheduleAssociationArgs(
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scheduleIdentifier:
          pulumi.Input.asInput<String>(map['scheduleIdentifier']),
    );
  }
}
