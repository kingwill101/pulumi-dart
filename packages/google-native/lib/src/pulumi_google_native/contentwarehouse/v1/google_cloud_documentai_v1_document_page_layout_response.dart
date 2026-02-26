// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_bounding_poly_response.dart';
import 'google_cloud_documentai_v1_document_text_anchor_response.dart';

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1DocumentPageLayoutResponse {
  /// The bounding polygon for the Layout.
  final GoogleCloudDocumentaiV1BoundingPolyResponse boundingPoly;

  /// Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.
  final double confidence;

  /// Detected orientation for the Layout.
  final String orientation;

  /// Text anchor indexing into the Document.text.
  final GoogleCloudDocumentaiV1DocumentTextAnchorResponse textAnchor;

  GoogleCloudDocumentaiV1DocumentPageLayoutResponse({
    required this.boundingPoly,
    required this.confidence,
    required this.orientation,
    required this.textAnchor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['boundingPoly'] = boundingPoly.toMap();
    map['confidence'] = confidence;
    map['orientation'] = orientation;
    map['textAnchor'] = textAnchor.toMap();
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageLayoutResponse(
      boundingPoly: GoogleCloudDocumentaiV1BoundingPolyResponse.fromMap(
          (map['boundingPoly'] as Map).cast<String, dynamic>()),
      confidence: map['confidence'] as double,
      orientation: map['orientation'] as String,
      textAnchor: GoogleCloudDocumentaiV1DocumentTextAnchorResponse.fromMap(
          (map['textAnchor'] as Map).cast<String, dynamic>()),
    );
  }
}
