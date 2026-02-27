// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1DocumentPageTableTableCell {
  /// How many columns this cell spans.
  final int? colSpan;

  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for TableCell.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// How many rows this cell spans.
  final int? rowSpan;

  GoogleCloudDocumentaiV1DocumentPageTableTableCell({
    this.colSpan,
    this.detectedLanguages,
    this.layout,
    this.rowSpan,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final colSpanValue = colSpan;
    if (colSpanValue != null) {
      map['colSpan'] = colSpanValue;
    }
    final detectedLanguagesValue = detectedLanguages;
    if (detectedLanguagesValue != null) {
      map['detectedLanguages'] = Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
              Map<String, dynamic>>(
          detectedLanguagesValue, (value) => value.toMap());
    }
    final layoutValue = layout;
    if (layoutValue != null) {
      map['layout'] = layoutValue.toMap();
    }
    final rowSpanValue = rowSpan;
    if (rowSpanValue != null) {
      map['rowSpan'] = rowSpanValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTableTableCell(
      colSpan: map['colSpan'] == null ? null : map['colSpan'] as int,
      detectedLanguages: map['detectedLanguages'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
              map['detectedLanguages'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
                      (value as Map).cast<String, dynamic>())),
      layout: map['layout'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['layout'] as Map).cast<String, dynamic>()),
      rowSpan: map['rowSpan'] == null ? null : map['rowSpan'] as int,
    );
  }
}
