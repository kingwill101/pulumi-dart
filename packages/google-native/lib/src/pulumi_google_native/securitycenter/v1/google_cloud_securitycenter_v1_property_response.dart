// ignore_for_file: unused_element, unnecessary_cast

import 'expr_response_securitycenter_v1.dart';

/// An individual name-value pair that defines a custom source property.
class GoogleCloudSecuritycenterV1PropertyResponse {
  /// Name of the property for the custom output.
  final String name;

  /// The CEL expression for the custom output. A resource property can be specified to return the value of the property or a text string enclosed in quotation marks.
  final ExprResponseSecuritycenterV1 valueExpression;

  GoogleCloudSecuritycenterV1PropertyResponse({
    required this.name,
    required this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['valueExpression'] = valueExpression.toMap();
    return map;
  }

  factory GoogleCloudSecuritycenterV1PropertyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudSecuritycenterV1PropertyResponse(
      name: map['name'] as String,
      valueExpression: ExprResponseSecuritycenterV1.fromMap(
          (map['valueExpression'] as Map).cast<String, dynamic>()),
    );
  }
}
