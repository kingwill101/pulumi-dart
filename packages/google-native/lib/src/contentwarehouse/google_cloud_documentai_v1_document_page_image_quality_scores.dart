// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_image_quality_scores_detected_defect.dart';

/// Image quality scores for the page image.
class GoogleCloudDocumentaiV1DocumentPageImageQualityScores {
  /// A list of detected defects.
  final List<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>? detectedDefects;
  /// The overall quality score. Range `[0, 1]` where `1` is perfect quality.
  final double? qualityScore;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageImageQualityScores].
  /// [detectedDefects] A list of detected defects.
  /// [qualityScore] The overall quality score. Range `[0, 1]` where `1` is perfect quality.
  GoogleCloudDocumentaiV1DocumentPageImageQualityScores({
    this.detectedDefects,
    this.qualityScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectedDefects': ?detectedDefects == null ? null : pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect, Map<String, dynamic>>(detectedDefects!, (value) => value.toMap()),
      'qualityScore': ?qualityScore,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageImageQualityScores.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageImageQualityScores(
      detectedDefects: map['detectedDefects'] == null ? null : pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>(map['detectedDefects'], (value) => GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect.fromMap((value as Map).cast<String, dynamic>())),
      qualityScore: map['qualityScore'] == null ? null : map['qualityScore'] as double,
    );
  }
}

