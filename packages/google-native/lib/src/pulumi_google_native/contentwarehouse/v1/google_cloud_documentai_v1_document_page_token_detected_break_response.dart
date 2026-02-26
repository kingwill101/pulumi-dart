// ignore_for_file: unused_element, unnecessary_cast

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse {
  /// Detected break type.
  final String type;

  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse(
      type: map['type'] as String,
    );
  }
}
