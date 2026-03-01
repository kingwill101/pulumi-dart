// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_table_types_response.dart';
import 'google_privacy_dlp_v2_or_conditions_response.dart';

/// Requirements that must be true before a table is scanned in discovery for the first time. There is an AND relationship between the top-level attributes. Additionally, minimum conditions with an OR relationship that must be met before Cloud DLP scans a table can be set (like a minimum row count or a minimum table age).
class GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse {
  /// BigQuery table must have been created after this date. Used to avoid backfilling.
  final String createdAfter;

  /// At least one of the conditions must be true for a table to be scanned.
  final GooglePrivacyDlpV2OrConditionsResponse orConditions;

  /// Restrict discovery to categories of table types.
  final String typeCollection;

  /// Restrict discovery to specific table types.
  final GooglePrivacyDlpV2BigQueryTableTypesResponse types;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse].
  /// [createdAfter] BigQuery table must have been created after this date. Used to avoid backfilling.
  /// [orConditions] At least one of the conditions must be true for a table to be scanned.
  /// [typeCollection] Restrict discovery to categories of table types.
  /// [types] Restrict discovery to specific table types.
  GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse({
    required this.createdAfter,
    required this.orConditions,
    required this.typeCollection,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAfter': createdAfter,
      'orConditions': orConditions.toMap(),
      'typeCollection': typeCollection,
      'types': types.toMap(),
    };
  }

  factory GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse(
      createdAfter: map['createdAfter'] as String,
      orConditions: GooglePrivacyDlpV2OrConditionsResponse.fromMap(
        (map['orConditions'] as Map).cast<String, dynamic>(),
      ),
      typeCollection: map['typeCollection'] as String,
      types: GooglePrivacyDlpV2BigQueryTableTypesResponse.fromMap(
        (map['types'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
