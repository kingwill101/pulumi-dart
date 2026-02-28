// ignore_for_file: unused_element, unnecessary_cast

/// Informational messages about the state of the Cloud Function or Operation.
class GoogleCloudFunctionsV2alphaStateMessageResponse {
  /// The message.
  final String message;

  /// Severity of the state message.
  final String severity;

  /// One-word CamelCase type of the state message.
  final String type;

  /// Creates a new [GoogleCloudFunctionsV2alphaStateMessageResponse].
  /// [message] The message.
  /// [severity] Severity of the state message.
  /// [type] One-word CamelCase type of the state message.
  GoogleCloudFunctionsV2alphaStateMessageResponse({
    required this.message,
    required this.severity,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['severity'] = severity;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudFunctionsV2alphaStateMessageResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudFunctionsV2alphaStateMessageResponse(
      message: map['message'] as String,
      severity: map['severity'] as String,
      type: map['type'] as String,
    );
  }
}
