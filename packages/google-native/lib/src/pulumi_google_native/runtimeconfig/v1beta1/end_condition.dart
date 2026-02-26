// ignore_for_file: unused_element, unnecessary_cast

import 'cardinality.dart';

/// The condition that a Waiter resource is waiting for.
class EndCondition {
  /// The cardinality of the `EndCondition`.
  final Cardinality? cardinality;

  EndCondition({
    this.cardinality,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cardinalityValue = cardinality;
    if (cardinalityValue != null) {
      map['cardinality'] = cardinalityValue.toMap();
    }
    return map;
  }

  factory EndCondition.fromMap(Map<String, dynamic> map) {
    return EndCondition(
      cardinality: map['cardinality'] == null
          ? null
          : Cardinality.fromMap(
              (map['cardinality'] as Map).cast<String, dynamic>()),
    );
  }
}
