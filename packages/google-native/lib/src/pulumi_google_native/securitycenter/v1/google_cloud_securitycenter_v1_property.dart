// ignore_for_file: unused_element, unnecessary_cast

import 'expr100.dart';

/// An individual name-value pair that defines a custom source property.
class GoogleCloudSecuritycenterV1Property {
  /// Name of the property for the custom output.
  final String? name;

  /// The CEL expression for the custom output. A resource property can be specified to return the value of the property or a text string enclosed in quotation marks.
  final Expr100? valueExpression;

  GoogleCloudSecuritycenterV1Property({
    this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueExpressionValue = valueExpression;
    if (valueExpressionValue != null) {
      map['valueExpression'] = valueExpressionValue.toMap();
    }
    return map;
  }

  factory GoogleCloudSecuritycenterV1Property.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudSecuritycenterV1Property(
      name: map['name'] == null ? null : map['name'] as String,
      valueExpression: map['valueExpression'] == null
          ? null
          : Expr100.fromMap(
              (map['valueExpression'] as Map).cast<String, dynamic>()),
    );
  }
}
