// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';

/// Detected non-text visual elements e.g. checkbox, signature etc. on the page.
class GoogleCloudDocumentaiV1DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for VisualElement.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// Type of the VisualElement.
  final String? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageVisualElement].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for VisualElement.
  /// [type] Type of the VisualElement.
  GoogleCloudDocumentaiV1DocumentPageVisualElement({
    this.detectedLanguages,
    this.layout,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedLanguages': ?detectedLanguages == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
              Map<String, dynamic>
            >(detectedLanguages!, (value) => value.toMap()),
      'layout': ?layout == null ? null : layout!.toMap(),
      'type': ?type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageVisualElement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageVisualElement(
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
      layout: map['layout'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['layout'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
