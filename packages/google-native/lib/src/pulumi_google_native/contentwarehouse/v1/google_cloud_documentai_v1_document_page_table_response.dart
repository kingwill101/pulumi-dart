// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_page_table_table_row_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1DocumentPageTableResponse {
  /// Body rows of the table.
  final List<GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse> bodyRows;

  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>
      detectedLanguages;

  /// Header rows of the table.
  final List<GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse>
      headerRows;

  /// Layout for Table.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse layout;

  /// The history of this table.
  final GoogleCloudDocumentaiV1DocumentProvenanceResponse provenance;

  GoogleCloudDocumentaiV1DocumentPageTableResponse({
    required this.bodyRows,
    required this.detectedLanguages,
    required this.headerRows,
    required this.layout,
    required this.provenance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bodyRows'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse,
        Map<String, dynamic>>(bodyRows, (value) => value.toMap());
    map['detectedLanguages'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse,
        Map<String, dynamic>>(detectedLanguages, (value) => value.toMap());
    map['headerRows'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse,
        Map<String, dynamic>>(headerRows, (value) => value.toMap());
    map['layout'] = layout.toMap();
    map['provenance'] = provenance.toMap();
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTableResponse(
      bodyRows: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse>(
          map['bodyRows'],
          (value) =>
              GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      detectedLanguages: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(
          map['detectedLanguages'],
          (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      headerRows: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse>(
          map['headerRows'],
          (value) =>
              GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      layout: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
          (map['layout'] as Map).cast<String, dynamic>()),
      provenance: GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
    );
  }
}
