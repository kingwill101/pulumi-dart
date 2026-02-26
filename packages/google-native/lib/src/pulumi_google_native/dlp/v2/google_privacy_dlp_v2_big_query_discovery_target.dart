// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_discovery_big_query_conditions.dart';
import 'google_privacy_dlp_v2_discovery_big_query_filter.dart';
import 'google_privacy_dlp_v2_discovery_generation_cadence.dart';

/// Target used to match against for discovery with BigQuery tables
class GooglePrivacyDlpV2BigQueryDiscoveryTarget {
  /// How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  final GooglePrivacyDlpV2DiscoveryGenerationCadence? cadence;

  /// In addition to matching the filter, these conditions must be true before a profile is generated.
  final GooglePrivacyDlpV2DiscoveryBigQueryConditions? conditions;

  /// Tables that match this filter will not have profiles created.
  final Map<String, dynamic>? disabled;

  /// The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  final GooglePrivacyDlpV2DiscoveryBigQueryFilter filter;

  GooglePrivacyDlpV2BigQueryDiscoveryTarget({
    this.cadence,
    this.conditions,
    this.disabled,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cadenceValue = cadence;
    if (cadenceValue != null) {
      map['cadence'] = cadenceValue.toMap();
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = conditionsValue.toMap();
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['filter'] = filter.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryDiscoveryTarget.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryDiscoveryTarget(
      cadence: map['cadence'] == null
          ? null
          : GooglePrivacyDlpV2DiscoveryGenerationCadence.fromMap(
              (map['cadence'] as Map).cast<String, dynamic>()),
      conditions: map['conditions'] == null
          ? null
          : GooglePrivacyDlpV2DiscoveryBigQueryConditions.fromMap(
              (map['conditions'] as Map).cast<String, dynamic>()),
      disabled: map['disabled'] == null
          ? null
          : (map['disabled'] as Map).cast<String, dynamic>(),
      filter: GooglePrivacyDlpV2DiscoveryBigQueryFilter.fromMap(
          (map['filter'] as Map).cast<String, dynamic>()),
    );
  }
}
