// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_profile_spec_post_scan_actions_big_query_export_response.dart';

/// The configuration of post scan actions of DataProfileScan job.
class GoogleCloudDataplexV1DataProfileSpecPostScanActionsResponse {
  /// Optional. If set, results will be exported to the provided BigQuery table.
  final GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse
      bigqueryExport;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpecPostScanActionsResponse].
  /// [bigqueryExport] Optional. If set, results will be exported to the provided BigQuery table.
  GoogleCloudDataplexV1DataProfileSpecPostScanActionsResponse({
    required this.bigqueryExport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryExport'] = bigqueryExport.toMap();
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileSpecPostScanActionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpecPostScanActionsResponse(
      bigqueryExport:
          GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExportResponse
              .fromMap((map['bigqueryExport'] as Map).cast<String, dynamic>()),
    );
  }
}
