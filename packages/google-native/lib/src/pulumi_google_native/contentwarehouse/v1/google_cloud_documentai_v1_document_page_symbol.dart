// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';

/// A detected symbol.
class GoogleCloudDocumentaiV1DocumentPageSymbol {
  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Symbol.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1DocumentPageSymbol({
    this.detectedLanguages,
    this.layout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detectedLanguagesValue = detectedLanguages;
    if (detectedLanguagesValue != null) {
      map['detectedLanguages'] = pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
              Map<String, dynamic>>(
          detectedLanguagesValue, (value) => value.toMap());
    }
    final layoutValue = layout;
    if (layoutValue != null) {
      map['layout'] = layoutValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageSymbol.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageSymbol(
      detectedLanguages: map['detectedLanguages'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
              map['detectedLanguages'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
                      (value as Map).cast<String, dynamic>())),
      layout: map['layout'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['layout'] as Map).cast<String, dynamic>()),
    );
  }
}
