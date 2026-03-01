// ignore_for_file: unused_element, unnecessary_cast

import 'open_api_validation_response.dart';

class OpenApiConfigurationResponse {
  /// The open api validation.
  final OpenApiValidationResponse? validation;

  /// Creates a new [OpenApiConfigurationResponse].
  /// [validation] The open api validation.
  OpenApiConfigurationResponse({
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validation': ?validation == null ? null : validation!.toMap(),
    };
  }

  factory OpenApiConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OpenApiConfigurationResponse(
      validation: map['validation'] == null ? null : OpenApiValidationResponse.fromMap((map['validation'] as Map).cast<String, dynamic>()),
    );
  }
}

