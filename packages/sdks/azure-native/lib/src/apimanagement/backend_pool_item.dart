// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Backend pool service information
class BackendPoolItem {
  /// The unique ARM id of the backend entity. The ARM id should refer to an already existing backend entity.
  final pulumi.Input<String> id;
  /// The priority of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  final pulumi.Input<int?>? priority;
  /// The weight of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  final pulumi.Input<int?>? weight;

  /// Creates a new [BackendPoolItem].
  /// [id] The unique ARM id of the backend entity. The ARM id should refer to an already existing backend entity.
  /// [priority] The priority of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  /// [weight] The weight of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  const BackendPoolItem({
    required this.id,
    this.priority,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'priority': ?priority,
      'weight': ?weight,
    };
  }

  factory BackendPoolItem.fromMap(Map<String, dynamic> map) {
    return BackendPoolItem(
      id: pulumi.Input.fromValue(map['id'] as String),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
