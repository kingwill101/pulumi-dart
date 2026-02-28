// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_profile_spec_post_scan_actions_big_query_export.dart';

/// The configuration of post scan actions of DataProfileScan job.
class GoogleCloudDataplexV1DataProfileSpecPostScanActions {
  /// Optional. If set, results will be exported to the provided BigQuery table.
  final GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport? bigqueryExport;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpecPostScanActions].
  /// [bigqueryExport] Optional. If set, results will be exported to the provided BigQuery table.
  GoogleCloudDataplexV1DataProfileSpecPostScanActions({
    this.bigqueryExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExport': ?bigqueryExport == null ? null : bigqueryExport!.toMap(),
    };
  }

  factory GoogleCloudDataplexV1DataProfileSpecPostScanActions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpecPostScanActions(
      bigqueryExport: map['bigqueryExport'] == null ? null : GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport.fromMap((map['bigqueryExport'] as Map).cast<String, dynamic>()),
    );
  }
}

