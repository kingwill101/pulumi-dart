// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LiteReservation.
class LiteReservationArgs {
  /// Name of the reservation.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the pubsub lite reservation.
  final Input<String>? region;

  /// The reserved throughput capacity. Every unit of throughput capacity is
  /// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
  /// messages.
  final Input<int> throughputCapacity;

  LiteReservationArgs({
    this.name,
    this.project,
    this.region,
    required this.throughputCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['throughputCapacity'] = throughputCapacity;
    return map;
  }

  factory LiteReservationArgs.fromMap(Map<String, dynamic> map) {
    return LiteReservationArgs(
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      throughputCapacity: Input.asInput<int>(map['throughputCapacity']),
    );
  }
}
