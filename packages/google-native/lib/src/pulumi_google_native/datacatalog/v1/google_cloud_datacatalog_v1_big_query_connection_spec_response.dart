// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_cloud_sql_big_query_connection_spec_response.dart';

/// Specification for the BigQuery connection.
class GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse {
  /// Specification for the BigQuery connection to a Cloud SQL instance.
  final GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse cloudSql;

  /// The type of the BigQuery connection.
  final String connectionType;

  /// True if there are credentials attached to the BigQuery connection; false otherwise.
  final bool hasCredential;

  GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse({
    required this.cloudSql,
    required this.connectionType,
    required this.hasCredential,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSql'] = cloudSql.toMap();
    map['connectionType'] = connectionType;
    map['hasCredential'] = hasCredential;
    return map;
  }

  factory GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse(
      cloudSql: GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpecResponse
          .fromMap((map['cloudSql'] as Map).cast<String, dynamic>()),
      connectionType: map['connectionType'] as String,
      hasCredential: map['hasCredential'] as bool,
    );
  }
}
