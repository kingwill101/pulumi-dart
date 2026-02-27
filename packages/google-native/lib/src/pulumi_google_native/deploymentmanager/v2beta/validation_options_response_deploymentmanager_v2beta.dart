// ignore_for_file: unused_element, unnecessary_cast

/// Options for how to validate and process properties on a resource.
class ValidationOptionsResponseDeploymentmanagerV2beta {
  /// Customize how deployment manager will validate the resource against schema errors.
  final String schemaValidation;

  /// Specify what to do with extra properties when executing a request.
  final String undeclaredProperties;

  ValidationOptionsResponseDeploymentmanagerV2beta({
    required this.schemaValidation,
    required this.undeclaredProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemaValidation'] = schemaValidation;
    map['undeclaredProperties'] = undeclaredProperties;
    return map;
  }

  factory ValidationOptionsResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return ValidationOptionsResponseDeploymentmanagerV2beta(
      schemaValidation: map['schemaValidation'] as String,
      undeclaredProperties: map['undeclaredProperties'] as String,
    );
  }
}
