// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTable].
  /// [bodyRows] Body rows of the table.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [headerRows] Header rows of the table.
  /// [layout] Layout for Table.
  /// [provenance] The history of this table.
  GoogleCloudDocumentaiV1DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
    this.provenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyRows': ?bodyRows == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageTableTableRow,
              Map<String, dynamic>
            >(bodyRows!, (value) => value.toMap()),
      'detectedLanguages': ?detectedLanguages == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
              Map<String, dynamic>
            >(detectedLanguages!, (value) => value.toMap()),
      'headerRows': ?headerRows == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageTableTableRow,
              Map<String, dynamic>
            >(headerRows!, (value) => value.toMap()),
      'layout': ?layout == null ? null : layout!.toMap(),
      'provenance': ?provenance == null ? null : provenance!.toMap(),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageTable(
      bodyRows: map['bodyRows'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageTableTableRow
            >(
              map['bodyRows'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      detectedLanguages: map['detectedLanguages'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
            >(
              map['detectedLanguages'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      headerRows: map['headerRows'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageTableTableRow
            >(
              map['headerRows'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      layout: map['layout'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['layout'] as Map).cast<String, dynamic>(),
            ),
      provenance: map['provenance'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
