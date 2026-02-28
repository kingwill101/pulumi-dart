// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>? detectedLanguages;
  /// Layout for Token.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;
  /// The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenance? provenance;
  /// Text style attributes.
  final GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo? styleInfo;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageToken].
  /// [detectedBreak] Detected break at the end of a Token.
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Token.
  /// [provenance] The history of this annotation.
  /// [styleInfo] Text style attributes.
  GoogleCloudDocumentaiV1DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
    this.styleInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedBreak': ?detectedBreak == null ? null : detectedBreak!.toMap(),
      'detectedLanguages': ?detectedLanguages == null ? null : pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, Map<String, dynamic>>(detectedLanguages!, (value) => value.toMap()),
      'layout': ?layout == null ? null : layout!.toMap(),
      'provenance': ?provenance == null ? null : provenance!.toMap(),
      'styleInfo': ?styleInfo == null ? null : styleInfo!.toMap(),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageToken.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageToken(
      detectedBreak: map['detectedBreak'] == null ? null : GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromMap((map['detectedBreak'] as Map).cast<String, dynamic>()),
      detectedLanguages: map['detectedLanguages'] == null ? null : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(map['detectedLanguages'], (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>())),
      layout: map['layout'] == null ? null : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((map['layout'] as Map).cast<String, dynamic>()),
      provenance: map['provenance'] == null ? null : GoogleCloudDocumentaiV1DocumentProvenance.fromMap((map['provenance'] as Map).cast<String, dynamic>()),
      styleInfo: map['styleInfo'] == null ? null : GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromMap((map['styleInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

