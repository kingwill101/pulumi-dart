// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Dimension
class DimensionResponse {
  /// The name of the dimension, from 1–255 characters in length. This dimension name must have been included when the metric was published.
  final pulumi.Input<String?>? name;
  /// The value for the dimension, from 1–255 characters in length.
  final pulumi.Input<String?>? value;

  /// Creates a new [DimensionResponse].
  /// [name] The name of the dimension, from 1–255 characters in length. This dimension name must have been included when the metric was published.
  /// [value] The value for the dimension, from 1–255 characters in length.
  const DimensionResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DimensionResponse.fromMap(Map<String, dynamic> map) {
    return DimensionResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
