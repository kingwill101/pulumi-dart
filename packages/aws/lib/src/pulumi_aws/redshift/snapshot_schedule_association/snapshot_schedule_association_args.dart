// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SnapshotScheduleAssociation.
class SnapshotScheduleAssociationArgs {
  /// The cluster identifier.
  final Input<String> clusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The snapshot schedule identifier.
  final Input<String> scheduleIdentifier;

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
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      scheduleIdentifier: Input.asInput<String>(map['scheduleIdentifier']),
    );
  }
}
