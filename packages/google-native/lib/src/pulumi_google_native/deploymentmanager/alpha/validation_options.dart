// ignore_for_file: unused_element, unnecessary_cast

import 'validation_options_schema_validation.dart';
import 'validation_options_undeclared_properties.dart';

/// Options for how to validate and process properties on a resource.
class ValidationOptions {
  /// Customize how deployment manager will validate the resource against schema errors.
  final ValidationOptionsSchemaValidation? schemaValidation;

  /// Specify what to do with extra properties when executing a request.
  final ValidationOptionsUndeclaredProperties? undeclaredProperties;

  ValidationOptions({
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

  factory ValidationOptions.fromMap(Map<String, dynamic> map) {
    return ValidationOptions(
      schemaValidation: map['schemaValidation'] == null
          ? null
          : ValidationOptionsSchemaValidation.fromValue(
              map['schemaValidation'] as String),
      undeclaredProperties: map['undeclaredProperties'] == null
          ? null
          : ValidationOptionsUndeclaredProperties.fromValue(
              map['undeclaredProperties'] as String),
    );
  }
}
