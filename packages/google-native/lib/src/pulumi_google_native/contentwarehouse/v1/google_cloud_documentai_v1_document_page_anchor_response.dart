// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_page_anchor_page_ref_response.dart';

/// Referencing the visual context of the entity in the Document.pages. Page anchors can be cross-page, consist of multiple bounding polygons and optionally reference specific layout element types.
class GoogleCloudDocumentaiV1DocumentPageAnchorResponse {
  /// One or more references to visual page elements
  final List<GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse> pageRefs;

  GoogleCloudDocumentaiV1DocumentPageAnchorResponse({
    required this.pageRefs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pageRefs'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse,
        Map<String, dynamic>>(pageRefs, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageAnchorResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageAnchorResponse(
      pageRefs: Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse>(
          map['pageRefs'],
          (value) =>
              GoogleCloudDocumentaiV1DocumentPageAnchorPageRefResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
