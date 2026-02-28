// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_entity_compatibility_status_compatibility_response.dart';

/// Provides compatibility information for various metadata stores.
class GoogleCloudDataplexV1EntityCompatibilityStatusResponse {
  /// Whether this entity is compatible with BigQuery.
  final GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse bigquery;
  /// Whether this entity is compatible with Hive Metastore.
  final GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse hiveMetastore;

  /// Creates a new [GoogleCloudDataplexV1EntityCompatibilityStatusResponse].
  /// [bigquery] Whether this entity is compatible with BigQuery.
  /// [hiveMetastore] Whether this entity is compatible with Hive Metastore.
  GoogleCloudDataplexV1EntityCompatibilityStatusResponse({
    required this.bigquery,
    required this.hiveMetastore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquery': bigquery.toMap(),
      'hiveMetastore': hiveMetastore.toMap(),
    };
  }

  factory GoogleCloudDataplexV1EntityCompatibilityStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EntityCompatibilityStatusResponse(
      bigquery: GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse.fromMap((map['bigquery'] as Map).cast<String, dynamic>()),
      hiveMetastore: GoogleCloudDataplexV1EntityCompatibilityStatusCompatibilityResponse.fromMap((map['hiveMetastore'] as Map).cast<String, dynamic>()),
    );
  }
}

