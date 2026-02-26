// ignore_for_file: unused_element, unnecessary_cast

import 'cardinality_response.dart';

/// The condition that a Waiter resource is waiting for.
class EndConditionResponse {
  /// The cardinality of the `EndCondition`.
  final CardinalityResponse cardinality;

  EndConditionResponse({
    required this.cardinality,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cardinality'] = cardinality.toMap();
    return map;
  }

  factory EndConditionResponse.fromMap(Map<String, dynamic> map) {
    return EndConditionResponse(
      cardinality: CardinalityResponse.fromMap(
          (map['cardinality'] as Map).cast<String, dynamic>()),
    );
  }
}
