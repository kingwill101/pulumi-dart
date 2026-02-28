// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_lite_reservation_lite_reservation_args_doc}
/// The set of arguments for LiteReservation.
/// {@endtemplate}
/// {@macro pulumi_pubsub_lite_reservation_lite_reservation_args_doc}
class LiteReservationArgs {
  /// Name of the reservation.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the pubsub lite reservation.
  final pulumi.Input<String>? region;
  /// The reserved throughput capacity. Every unit of throughput capacity is
  /// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
  /// messages.
  final pulumi.Input<int> throughputCapacity;

  /// Creates a new [LiteReservationArgs].
  /// [name] Name of the reservation.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the pubsub lite reservation.
  /// [throughputCapacity] The reserved throughput capacity. Every unit of throughput capacity is
  LiteReservationArgs({
    String? name,
    String? project,
    String? region,
    required int throughputCapacity,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      throughputCapacity = pulumi.Input.asInput<int>(throughputCapacity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'throughputCapacity': throughputCapacity,
    };
  }

  factory LiteReservationArgs.fromMap(Map<String, dynamic> map) {
    return LiteReservationArgs(
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      throughputCapacity: map['throughputCapacity'] as int,
    );
  }
}

