// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_quality_spec_post_scan_actions_big_query_export_response.dart';

/// The configuration of post scan actions of DataQualityScan.
class GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse {
  /// Optional. If set, results will be exported to the provided BigQuery table.
  final GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse
      bigqueryExport;

  /// Creates a new [GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse].
  /// [bigqueryExport] Optional. If set, results will be exported to the provided BigQuery table.
  GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse({
    required this.bigqueryExport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryExport'] = bigqueryExport.toMap();
    return map;
  }

  factory GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse(
      bigqueryExport:
          GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse
              .fromMap((map['bigqueryExport'] as Map).cast<String, dynamic>()),
    );
  }
}
