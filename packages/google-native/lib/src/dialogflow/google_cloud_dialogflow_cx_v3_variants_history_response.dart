// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_version_variants_response.dart';

/// The history of variants update.
class GoogleCloudDialogflowCxV3VariantsHistoryResponse {
  /// Update time of the variants.
  final String updateTime;

  /// The flow versions as the variants.
  final GoogleCloudDialogflowCxV3VersionVariantsResponse versionVariants;

  /// Creates a new [GoogleCloudDialogflowCxV3VariantsHistoryResponse].
  /// [updateTime] Update time of the variants.
  /// [versionVariants] The flow versions as the variants.
  GoogleCloudDialogflowCxV3VariantsHistoryResponse({
    required this.updateTime,
    required this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateTime': updateTime,
      'versionVariants': versionVariants.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3VariantsHistoryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3VariantsHistoryResponse(
      updateTime: map['updateTime'] as String,
      versionVariants: GoogleCloudDialogflowCxV3VersionVariantsResponse.fromMap(
        (map['versionVariants'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
