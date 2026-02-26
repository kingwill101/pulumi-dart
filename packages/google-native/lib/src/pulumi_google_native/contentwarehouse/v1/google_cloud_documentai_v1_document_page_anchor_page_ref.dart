// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_bounding_poly.dart';
import 'google_cloud_documentai_v1_document_page_anchor_page_ref_layout_type.dart';

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef {
  /// Optional. Identifies the bounding polygon of a layout element on the page.
  final GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
  final double? confidence;

  /// Optional. Deprecated. Use PageRef.bounding_poly instead.
  final String? layoutId;

  /// Optional. The type of the layout element that is being referenced if any.
  final GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType? layoutType;

  /// Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.
  final String page;

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    required this.page,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boundingPolyValue = boundingPoly;
    if (boundingPolyValue != null) {
      map['boundingPoly'] = boundingPolyValue.toMap();
    }
    final confidenceValue = confidence;
    if (confidenceValue != null) {
      map['confidence'] = confidenceValue;
    }
    final layoutIdValue = layoutId;
    if (layoutIdValue != null) {
      map['layoutId'] = layoutIdValue;
    }
    final layoutTypeValue = layoutType;
    if (layoutTypeValue != null) {
      map['layoutType'] = layoutTypeValue.value;
    }
    map['page'] = page;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageAnchorPageRef(
      boundingPoly: map['boundingPoly'] == null
          ? null
          : GoogleCloudDocumentaiV1BoundingPoly.fromMap(
              (map['boundingPoly'] as Map).cast<String, dynamic>()),
      confidence:
          map['confidence'] == null ? null : map['confidence'] as double,
      layoutId: map['layoutId'] == null ? null : map['layoutId'] as String,
      layoutType: map['layoutType'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType
              .fromValue(map['layoutType'] as String),
      page: map['page'] as String,
    );
  }
}
