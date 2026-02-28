// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
class GoogleCloudDocumentaiV1DocumentPageBlockResponse {
  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>
      detectedLanguages;

  /// Layout for Block.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse layout;

  /// The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenanceResponse provenance;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageBlockResponse].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Block.
  /// [provenance] The history of this annotation.
  GoogleCloudDocumentaiV1DocumentPageBlockResponse({
    required this.detectedLanguages,
    required this.layout,
    required this.provenance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detectedLanguages'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse,
        Map<String, dynamic>>(detectedLanguages, (value) => value.toMap());
    map['layout'] = layout.toMap();
    map['provenance'] = provenance.toMap();
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageBlockResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageBlockResponse(
      detectedLanguages: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(
          map['detectedLanguages'],
          (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      layout: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
          (map['layout'] as Map).cast<String, dynamic>()),
      provenance: GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
    );
  }
}
