// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_page_token_detected_break_response.dart';
import 'google_cloud_documentai_v1_document_page_token_style_info_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A detected token.
class GoogleCloudDocumentaiV1DocumentPageTokenResponse {
  /// Detected break at the end of a Token.
  final GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse
      detectedBreak;

  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>
      detectedLanguages;

  /// Layout for Token.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse layout;

  /// The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenanceResponse provenance;

  /// Text style attributes.
  final GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse styleInfo;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTokenResponse].
  /// [detectedBreak] Detected break at the end of a Token.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Token.
  /// [provenance] The history of this annotation.
  /// [styleInfo] Text style attributes.
  GoogleCloudDocumentaiV1DocumentPageTokenResponse({
    required this.detectedBreak,
    required this.detectedLanguages,
    required this.layout,
    required this.provenance,
    required this.styleInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detectedBreak'] = detectedBreak.toMap();
    map['detectedLanguages'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse,
        Map<String, dynamic>>(detectedLanguages, (value) => value.toMap());
    map['layout'] = layout.toMap();
    map['provenance'] = provenance.toMap();
    map['styleInfo'] = styleInfo.toMap();
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTokenResponse(
      detectedBreak:
          GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakResponse.fromMap(
              (map['detectedBreak'] as Map).cast<String, dynamic>()),
      detectedLanguages: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(
          map['detectedLanguages'],
          (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      layout: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
          (map['layout'] as Map).cast<String, dynamic>()),
      provenance: GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
      styleInfo:
          GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse.fromMap(
              (map['styleInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
