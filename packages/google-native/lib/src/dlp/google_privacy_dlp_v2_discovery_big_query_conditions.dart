// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_table_types.dart';
import 'google_privacy_dlp_v2_discovery_big_query_conditions_type_collection.dart';
import 'google_privacy_dlp_v2_or_conditions.dart';

/// Requirements that must be true before a table is scanned in discovery for the first time. There is an AND relationship between the top-level attributes. Additionally, minimum conditions with an OR relationship that must be met before Cloud DLP scans a table can be set (like a minimum row count or a minimum table age).
class GooglePrivacyDlpV2DiscoveryBigQueryConditions {
  /// BigQuery table must have been created after this date. Used to avoid backfilling.
  final String? createdAfter;

  /// At least one of the conditions must be true for a table to be scanned.
  final GooglePrivacyDlpV2OrConditions? orConditions;

  /// Restrict discovery to categories of table types.
  final GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection?
  typeCollection;

  /// Restrict discovery to specific table types.
  final GooglePrivacyDlpV2BigQueryTableTypes? types;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryBigQueryConditions].
  /// [createdAfter] BigQuery table must have been created after this date. Used to avoid backfilling.
  /// [orConditions] At least one of the conditions must be true for a table to be scanned.
  /// [typeCollection] Restrict discovery to categories of table types.
  /// [types] Restrict discovery to specific table types.
  GooglePrivacyDlpV2DiscoveryBigQueryConditions({
    this.createdAfter,
    this.orConditions,
    this.typeCollection,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAfter': ?createdAfter,
      'orConditions': ?orConditions == null ? null : orConditions!.toMap(),
      'typeCollection': ?typeCollection == null ? null : typeCollection!.value,
      'types': ?types == null ? null : types!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2DiscoveryBigQueryConditions.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DiscoveryBigQueryConditions(
      createdAfter: map['createdAfter'] == null
          ? null
          : map['createdAfter'] as String,
      orConditions: map['orConditions'] == null
          ? null
          : GooglePrivacyDlpV2OrConditions.fromMap(
              (map['orConditions'] as Map).cast<String, dynamic>(),
            ),
      typeCollection: map['typeCollection'] == null
          ? null
          : GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection.fromValue(
              map['typeCollection'] as String,
            ),
      types: map['types'] == null
          ? null
          : GooglePrivacyDlpV2BigQueryTableTypes.fromMap(
              (map['types'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
