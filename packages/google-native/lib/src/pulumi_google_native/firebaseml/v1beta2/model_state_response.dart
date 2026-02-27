// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_firebaseml_v1beta2.dart';

/// State common to all model types. Includes publishing and validation information.
class ModelStateResponse {
  /// Indicates if this model has been published.
  final bool published;

  /// Indicates the latest validation error on the model if any. A model may have validation errors if there were problems during the model creation/update. e.g. in the case of a TfLiteModel, if a tflite model file was missing or in the wrong format. This field will be empty for valid models.
  final StatusResponseFirebasemlV1beta2 validationError;

  ModelStateResponse({
    required this.published,
    required this.validationError,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['published'] = published;
    map['validationError'] = validationError.toMap();
    return map;
  }

  factory ModelStateResponse.fromMap(Map<String, dynamic> map) {
    return ModelStateResponse(
      published: map['published'] as bool,
      validationError: StatusResponseFirebasemlV1beta2.fromMap(
          (map['validationError'] as Map).cast<String, dynamic>()),
    );
  }
}
