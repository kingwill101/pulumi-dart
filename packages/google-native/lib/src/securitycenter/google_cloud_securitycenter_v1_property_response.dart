// ignore_for_file: unused_element, unnecessary_cast

import 'expr_response.dart';

/// An individual name-value pair that defines a custom source property.
class GoogleCloudSecuritycenterV1PropertyResponse {
  /// Name of the property for the custom output.
  final String name;

  /// The CEL expression for the custom output. A resource property can be specified to return the value of the property or a text string enclosed in quotation marks.
  final ExprResponse valueExpression;

  /// Creates a new [GoogleCloudSecuritycenterV1PropertyResponse].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be specified to return the value of the property or a text string enclosed in quotation marks.
  GoogleCloudSecuritycenterV1PropertyResponse({
    required this.name,
    required this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valueExpression': valueExpression.toMap(),
    };
  }

  factory GoogleCloudSecuritycenterV1PropertyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudSecuritycenterV1PropertyResponse(
      name: map['name'] as String,
      valueExpression: ExprResponse.fromMap(
        (map['valueExpression'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
