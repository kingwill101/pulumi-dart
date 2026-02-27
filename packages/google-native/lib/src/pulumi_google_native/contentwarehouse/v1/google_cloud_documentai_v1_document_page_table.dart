// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_page_table_table_row.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1DocumentPageTable {
  /// Body rows of the table.
  final List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>? bodyRows;

  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Header rows of the table.
  final List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>? headerRows;

  /// Layout for Table.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this table.
  final GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
    this.provenance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bodyRowsValue = bodyRows;
    if (bodyRowsValue != null) {
      map['bodyRows'] = Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageTableTableRow,
          Map<String, dynamic>>(bodyRowsValue, (value) => value.toMap());
    }
    final detectedLanguagesValue = detectedLanguages;
    if (detectedLanguagesValue != null) {
      map['detectedLanguages'] = Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
              Map<String, dynamic>>(
          detectedLanguagesValue, (value) => value.toMap());
    }
    final headerRowsValue = headerRows;
    if (headerRowsValue != null) {
      map['headerRows'] = Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageTableTableRow,
          Map<String, dynamic>>(headerRowsValue, (value) => value.toMap());
    }
    final layoutValue = layout;
    if (layoutValue != null) {
      map['layout'] = layoutValue.toMap();
    }
    final provenanceValue = provenance;
    if (provenanceValue != null) {
      map['provenance'] = provenanceValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTable.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTable(
      bodyRows: map['bodyRows'] == null
          ? null
          : Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTableTableRow>(
              map['bodyRows'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap(
                      (value as Map).cast<String, dynamic>())),
      detectedLanguages: map['detectedLanguages'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
              map['detectedLanguages'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
                      (value as Map).cast<String, dynamic>())),
      headerRows: map['headerRows'] == null
          ? null
          : Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTableTableRow>(
              map['headerRows'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap(
                      (value as Map).cast<String, dynamic>())),
      layout: map['layout'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['layout'] as Map).cast<String, dynamic>()),
      provenance: map['provenance'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>()),
    );
  }
}
