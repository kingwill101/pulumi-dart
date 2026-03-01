// ignore_for_file: unused_element, unnecessary_cast

import 'cardinality_response.dart';

/// The condition that a Waiter resource is waiting for.
class EndConditionResponse {
  /// The cardinality of the `EndCondition`.
  final CardinalityResponse cardinality;

  /// Creates a new [EndConditionResponse].
  /// [cardinality] The cardinality of the `EndCondition`.
  EndConditionResponse({required this.cardinality});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cardinality': cardinality.toMap()};
  }

  factory EndConditionResponse.fromMap(Map<String, dynamic> map) {
    return EndConditionResponse(
      cardinality: CardinalityResponse.fromMap(
        (map['cardinality'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
