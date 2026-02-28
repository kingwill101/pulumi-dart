// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';

/// Detected non-text visual elements e.g. checkbox, signature etc. on the page.
class GoogleCloudDocumentaiV1DocumentPageVisualElementResponse {
  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse> detectedLanguages;
  /// Layout for VisualElement.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse layout;
  /// Type of the VisualElement.
  final String type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageVisualElementResponse].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for VisualElement.
  /// [type] Type of the VisualElement.
  GoogleCloudDocumentaiV1DocumentPageVisualElementResponse({
    required this.detectedLanguages,
    required this.layout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedLanguages': pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse, Map<String, dynamic>>(detectedLanguages, (value) => value.toMap()),
      'layout': layout.toMap(),
      'type': type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageVisualElementResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageVisualElementResponse(
      detectedLanguages: pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(map['detectedLanguages'], (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap((value as Map).cast<String, dynamic>())),
      layout: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['layout'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

