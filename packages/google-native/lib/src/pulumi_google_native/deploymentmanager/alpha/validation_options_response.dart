// ignore_for_file: unused_element, unnecessary_cast

/// Options for how to validate and process properties on a resource.
class ValidationOptionsResponse {
  /// Customize how deployment manager will validate the resource against schema errors.
  final String schemaValidation;

  /// Specify what to do with extra properties when executing a request.
  final String undeclaredProperties;

  ValidationOptionsResponse({
    required this.schemaValidation,
    required this.undeclaredProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemaValidation'] = schemaValidation;
    map['undeclaredProperties'] = undeclaredProperties;
    return map;
  }

  factory ValidationOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ValidationOptionsResponse(
      schemaValidation: map['schemaValidation'] as String,
      undeclaredProperties: map['undeclaredProperties'] as String,
    );
  }
}
