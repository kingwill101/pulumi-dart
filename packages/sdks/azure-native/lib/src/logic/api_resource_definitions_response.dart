// ignore_for_file: unused_element, unnecessary_cast


/// The Api resource definition.
class ApiResourceDefinitionsResponse {
  /// The modified swagger url.
  final String? modifiedSwaggerUrl;
  /// The original swagger url.
  final String? originalSwaggerUrl;

  /// Creates a new [ApiResourceDefinitionsResponse].
  /// [modifiedSwaggerUrl] The modified swagger url.
  /// [originalSwaggerUrl] The original swagger url.
  ApiResourceDefinitionsResponse({
    this.modifiedSwaggerUrl,
    this.originalSwaggerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiedSwaggerUrl': ?modifiedSwaggerUrl,
      'originalSwaggerUrl': ?originalSwaggerUrl,
    };
  }

  factory ApiResourceDefinitionsResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourceDefinitionsResponse(
      modifiedSwaggerUrl: map['modifiedSwaggerUrl'] == null ? null : map['modifiedSwaggerUrl'] as String,
      originalSwaggerUrl: map['originalSwaggerUrl'] == null ? null : map['originalSwaggerUrl'] as String,
    );
  }
}

