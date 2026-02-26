// ignore_for_file: unused_element, unnecessary_cast

import 'validation_options_schema_validation2.dart';
import 'validation_options_undeclared_properties2.dart';

/// Options for how to validate and process properties on a resource.
class ValidationOptions2 {
  /// Customize how deployment manager will validate the resource against schema errors.
  final ValidationOptionsSchemaValidation2? schemaValidation;

  /// Specify what to do with extra properties when executing a request.
  final ValidationOptionsUndeclaredProperties2? undeclaredProperties;

  ValidationOptions2({
    this.schemaValidation,
    this.undeclaredProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final schemaValidationValue = schemaValidation;
    if (schemaValidationValue != null) {
      map['schemaValidation'] = schemaValidationValue.value;
    }
    final undeclaredPropertiesValue = undeclaredProperties;
    if (undeclaredPropertiesValue != null) {
      map['undeclaredProperties'] = undeclaredPropertiesValue.value;
    }
    return map;
  }

  factory ValidationOptions2.fromMap(Map<String, dynamic> map) {
    return ValidationOptions2(
      schemaValidation: map['schemaValidation'] == null
          ? null
          : ValidationOptionsSchemaValidation2.fromValue(
              map['schemaValidation'] as String),
      undeclaredProperties: map['undeclaredProperties'] == null
          ? null
          : ValidationOptionsUndeclaredProperties2.fromValue(
              map['undeclaredProperties'] as String),
    );
  }
}
