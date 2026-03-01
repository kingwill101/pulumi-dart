// ignore_for_file: unused_element, unnecessary_cast

import 'validation_options_schema_validation.dart';
import 'validation_options_undeclared_properties.dart';

/// Options for how to validate and process properties on a resource.
class ValidationOptions {
  /// Customize how deployment manager will validate the resource against schema errors.
  final ValidationOptionsSchemaValidation? schemaValidation;

  /// Specify what to do with extra properties when executing a request.
  final ValidationOptionsUndeclaredProperties? undeclaredProperties;

  /// Creates a new [ValidationOptions].
  /// [schemaValidation] Customize how deployment manager will validate the resource against schema errors.
  /// [undeclaredProperties] Specify what to do with extra properties when executing a request.
  ValidationOptions({this.schemaValidation, this.undeclaredProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaValidation': ?schemaValidation == null
          ? null
          : schemaValidation!.value,
      'undeclaredProperties': ?undeclaredProperties == null
          ? null
          : undeclaredProperties!.value,
    };
  }

  factory ValidationOptions.fromMap(Map<String, dynamic> map) {
    return ValidationOptions(
      schemaValidation: map['schemaValidation'] == null
          ? null
          : ValidationOptionsSchemaValidation.fromValue(
              map['schemaValidation'] as String,
            ),
      undeclaredProperties: map['undeclaredProperties'] == null
          ? null
          : ValidationOptionsUndeclaredProperties.fromValue(
              map['undeclaredProperties'] as String,
            ),
    );
  }
}
