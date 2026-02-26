// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_quality_spec_post_scan_actions_big_query_export.dart';

/// The configuration of post scan actions of DataQualityScan.
class GoogleCloudDataplexV1DataQualitySpecPostScanActions {
  /// Optional. If set, results will be exported to the provided BigQuery table.
  final GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport?
      bigqueryExport;

  GoogleCloudDataplexV1DataQualitySpecPostScanActions({
    this.bigqueryExport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryExportValue = bigqueryExport;
    if (bigqueryExportValue != null) {
      map['bigqueryExport'] = bigqueryExportValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDataplexV1DataQualitySpecPostScanActions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualitySpecPostScanActions(
      bigqueryExport: map['bigqueryExport'] == null
          ? null
          : GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport
              .fromMap((map['bigqueryExport'] as Map).cast<String, dynamic>()),
    );
  }
}
