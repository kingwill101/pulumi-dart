// ignore_for_file: unused_element, unnecessary_cast

import 'validation_options_schema_validation_deploymentmanager_v2beta.dart';
import 'validation_options_undeclared_properties_deploymentmanager_v2beta.dart';

/// Options for how to validate and process properties on a resource.
class ValidationOptionsDeploymentmanagerV2beta {
  /// Customize how deployment manager will validate the resource against schema errors.
  final ValidationOptionsSchemaValidationDeploymentmanagerV2beta?
  schemaValidation;

  /// Specify what to do with extra properties when executing a request.
  final ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta?
  undeclaredProperties;

  /// Creates a new [ValidationOptionsDeploymentmanagerV2beta].
  /// [schemaValidation] Customize how deployment manager will validate the resource against schema errors.
  /// [undeclaredProperties] Specify what to do with extra properties when executing a request.
  ValidationOptionsDeploymentmanagerV2beta({
    this.schemaValidation,
    this.undeclaredProperties,
  });

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

  factory ValidationOptionsDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ValidationOptionsDeploymentmanagerV2beta(
      schemaValidation: map['schemaValidation'] == null
          ? null
          : ValidationOptionsSchemaValidationDeploymentmanagerV2beta.fromValue(
              map['schemaValidation'] as String,
            ),
      undeclaredProperties: map['undeclaredProperties'] == null
          ? null
          : ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta.fromValue(
              map['undeclaredProperties'] as String,
            ),
    );
  }
}
