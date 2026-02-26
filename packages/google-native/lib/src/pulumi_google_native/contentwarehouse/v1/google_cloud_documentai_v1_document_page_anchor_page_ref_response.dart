// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_bounding_poly_response.dart';

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse {
  /// Optional. Identifies the bounding polygon of a layout element on the page.
  final GoogleCloudDocumentaiV1BoundingPolyResponse boundingPoly;

  /// Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
  final double confidence;

  /// Optional. Deprecated. Use PageRef.bounding_poly instead.
  final String layoutId;

  /// Optional. The type of the layout element that is being referenced if any.
  final String layoutType;

  /// Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.
  final String page;

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse({
    required this.boundingPoly,
    required this.confidence,
    required this.layoutId,
    required this.layoutType,
    required this.page,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['boundingPoly'] = boundingPoly.toMap();
    map['confidence'] = confidence;
    map['layoutId'] = layoutId;
    map['layoutType'] = layoutType;
    map['page'] = page;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse(
      boundingPoly: GoogleCloudDocumentaiV1BoundingPolyResponse.fromMap(
          (map['boundingPoly'] as Map).cast<String, dynamic>()),
      confidence: map['confidence'] as double,
      layoutId: map['layoutId'] as String,
      layoutType: map['layoutType'] as String,
      page: map['page'] as String,
    );
  }
}
