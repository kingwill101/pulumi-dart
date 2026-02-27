// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_page_token_detected_break.dart';
import 'google_cloud_documentai_v1_document_page_token_style_info.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A detected token.
class GoogleCloudDocumentaiV1DocumentPageToken {
  /// Detected break at the end of a Token.
  final GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Token.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// Text style attributes.
  final GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo? styleInfo;

  GoogleCloudDocumentaiV1DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
    this.styleInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detectedBreakValue = detectedBreak;
    if (detectedBreakValue != null) {
      map['detectedBreak'] = detectedBreakValue.toMap();
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
    final provenanceValue = provenance;
    if (provenanceValue != null) {
      map['provenance'] = provenanceValue.toMap();
    }
    final styleInfoValue = styleInfo;
    if (styleInfoValue != null) {
      map['styleInfo'] = styleInfoValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageToken.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageToken(
      detectedBreak: map['detectedBreak'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromMap(
              (map['detectedBreak'] as Map).cast<String, dynamic>()),
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
      provenance: map['provenance'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>()),
      styleInfo: map['styleInfo'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromMap(
              (map['styleInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
