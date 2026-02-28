// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_big_query_connection_spec_response.dart';

/// Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type. Only one of internal specs can be set at the time, and cannot be changed later.
class GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse {
  /// Fields specific to BigQuery connections.
  final GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse
      bigqueryConnectionSpec;

  /// Creates a new [GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse].
  /// [bigqueryConnectionSpec] Fields specific to BigQuery connections.
  GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse({
    required this.bigqueryConnectionSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryConnectionSpec'] = bigqueryConnectionSpec.toMap();
    return map;
  }

  factory GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse(
      bigqueryConnectionSpec:
          GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse.fromMap(
              (map['bigqueryConnectionSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
