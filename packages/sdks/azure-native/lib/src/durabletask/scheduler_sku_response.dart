// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU (Stock Keeping Unit) assigned to this durable task scheduler
class SchedulerSkuResponse {
  /// The SKU capacity. This allows scale out/in for the resource and impacts zone redundancy
  final pulumi.Input<int?>? capacity;
  /// The name of the SKU
  final pulumi.Input<String> name;
  /// Indicates whether the current SKU configuration is zone redundant
  final pulumi.Input<String> redundancyState;

  /// Creates a new [SchedulerSkuResponse].
  /// [capacity] The SKU capacity. This allows scale out/in for the resource and impacts zone redundancy
  /// [name] The name of the SKU
  /// [redundancyState] Indicates whether the current SKU configuration is zone redundant
  const SchedulerSkuResponse({
    this.capacity,
    required this.name,
    required this.redundancyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'redundancyState': redundancyState,
    };
  }

  factory SchedulerSkuResponse.fromMap(Map<String, dynamic> map) {
    return SchedulerSkuResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      redundancyState: pulumi.Input.fromValue(map['redundancyState'] as String),
    );
  }
}
