// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
class GoogleCloudDocumentaiV1DocumentPageBlock {
  /// A list of detected languages together with confidence.
  final List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for Block.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  final GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageBlock].
  /// [detectedLanguages] A list of detected languages together with confidence.
  /// [layout] Layout for Block.
  /// [provenance] The history of this annotation.
  GoogleCloudDocumentaiV1DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
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
      'provenance': ?provenance == null ? null : provenance!.toMap(),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageBlock.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageBlock(
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
      provenance: map['provenance'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentProvenance.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
