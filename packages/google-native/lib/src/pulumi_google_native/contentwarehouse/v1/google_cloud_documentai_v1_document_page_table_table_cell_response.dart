// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse {
  /// How many columns this cell spans.
  final int colSpan;

  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>
      detectedLanguages;

  /// Layout for TableCell.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse layout;

  /// How many rows this cell spans.
  final int rowSpan;

  GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse({
    required this.colSpan,
    required this.detectedLanguages,
    required this.layout,
    required this.rowSpan,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['colSpan'] = colSpan;
    map['detectedLanguages'] = Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse,
        Map<String, dynamic>>(detectedLanguages, (value) => value.toMap());
    map['layout'] = layout.toMap();
    map['rowSpan'] = rowSpan;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse(
      colSpan: map['colSpan'] as int,
      detectedLanguages: Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(
          map['detectedLanguages'],
          (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      layout: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
          (map['layout'] as Map).cast<String, dynamic>()),
      rowSpan: map['rowSpan'] as int,
    );
  }
}
