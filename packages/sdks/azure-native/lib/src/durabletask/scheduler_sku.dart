// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU (Stock Keeping Unit) assigned to this durable task scheduler
class SchedulerSku {
  /// The SKU capacity. This allows scale out/in for the resource and impacts zone redundancy
  final pulumi.Input<int?>? capacity;
  /// The name of the SKU
  final pulumi.Input<String> name;

  /// Creates a new [SchedulerSku].
  /// [capacity] The SKU capacity. This allows scale out/in for the resource and impacts zone redundancy
  /// [name] The name of the SKU
  const SchedulerSku({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory SchedulerSku.fromMap(Map<String, dynamic> map) {
    return SchedulerSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
