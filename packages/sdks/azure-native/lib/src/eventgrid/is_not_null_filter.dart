// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IsNotNull Filter.
class IsNotNullFilter {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;

  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'IsNotNull'.
  final pulumi.Input<String> operatorType;

  /// Creates a new [IsNotNullFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  IsNotNullFilter({this.key, required this.operatorType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'operatorType': operatorType};
  }

  factory IsNotNullFilter.fromMap(Map<String, dynamic> map) {
    return IsNotNullFilter(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operatorType: pulumi.Input.fromValue(map['operatorType'] as String),
    );
  }
}
