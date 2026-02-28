// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_document_page_token_detected_break_type.dart';

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak {
  /// Detected break type.
  final GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak].
  /// [type] Detected break type.
  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(
      type: map['type'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType.fromValue(
              map['type'] as String),
    );
  }
}
