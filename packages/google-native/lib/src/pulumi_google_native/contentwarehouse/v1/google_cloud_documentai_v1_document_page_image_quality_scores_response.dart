// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_image_quality_scores_detected_defect_response.dart';

/// Image quality scores for the page image.
class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse {
  /// A list of detected defects.
  final List<
          GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse>
      detectedDefects;

  /// The overall quality score. Range `[0, 1]` where `1` is perfect quality.
  final double qualityScore;

  GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse({
    required this.detectedDefects,
    required this.qualityScore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detectedDefects'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse,
        Map<String, dynamic>>(detectedDefects, (value) => value.toMap());
    map['qualityScore'] = qualityScore;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageImageQualityScoresResponse(
      detectedDefects: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse>(
          map['detectedDefects'],
          (value) =>
              GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      qualityScore: map['qualityScore'] as double,
    );
  }
}
