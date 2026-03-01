// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_bounding_poly.dart';
import 'google_cloud_documentai_v1_document_page_layout_orientation.dart';
import 'google_cloud_documentai_v1_document_text_anchor.dart';

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1DocumentPageLayout {
  /// The bounding polygon for the Layout.
  final GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.
  final double? confidence;

  /// Detected orientation for the Layout.
  final GoogleCloudDocumentaiV1DocumentPageLayoutOrientation? orientation;

  /// Text anchor indexing into the Document.text.
  final GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageLayout].
  /// [boundingPoly] The bounding polygon for the Layout.
  /// [confidence] Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.
  /// [orientation] Detected orientation for the Layout.
  /// [textAnchor] Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentPageLayout({
    this.boundingPoly,
    this.confidence,
    this.orientation,
    this.textAnchor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingPoly': ?boundingPoly == null ? null : boundingPoly!.toMap(),
      'confidence': ?confidence,
      'orientation': ?orientation == null ? null : orientation!.value,
      'textAnchor': ?textAnchor == null ? null : textAnchor!.toMap(),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageLayout(
      boundingPoly: map['boundingPoly'] == null
          ? null
          : GoogleCloudDocumentaiV1BoundingPoly.fromMap(
              (map['boundingPoly'] as Map).cast<String, dynamic>(),
            ),
      confidence: map['confidence'] == null
          ? null
          : map['confidence'] as double,
      orientation: map['orientation'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayoutOrientation.fromValue(
              map['orientation'] as String,
            ),
      textAnchor: map['textAnchor'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap(
              (map['textAnchor'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
