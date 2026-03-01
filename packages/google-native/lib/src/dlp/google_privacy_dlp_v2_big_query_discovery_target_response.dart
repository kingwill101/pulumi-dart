// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_discovery_big_query_conditions_response.dart';
import 'google_privacy_dlp_v2_discovery_big_query_filter_response.dart';
import 'google_privacy_dlp_v2_discovery_generation_cadence_response.dart';

/// Target used to match against for discovery with BigQuery tables
class GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse {
  /// How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  final GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse cadence;

  /// In addition to matching the filter, these conditions must be true before a profile is generated.
  final GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse conditions;

  /// Tables that match this filter will not have profiles created.
  final Map<String, dynamic> disabled;

  /// The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  final GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse filter;

  /// Creates a new [GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse].
  /// [cadence] How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  /// [conditions] In addition to matching the filter, these conditions must be true before a profile is generated.
  /// [disabled] Tables that match this filter will not have profiles created.
  /// [filter] The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse({
    required this.cadence,
    required this.conditions,
    required this.disabled,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cadence': cadence.toMap(),
      'conditions': conditions.toMap(),
      'disabled': disabled,
      'filter': filter.toMap(),
    };
  }

  factory GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse(
      cadence: GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse.fromMap(
        (map['cadence'] as Map).cast<String, dynamic>(),
      ),
      conditions: GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse.fromMap(
        (map['conditions'] as Map).cast<String, dynamic>(),
      ),
      disabled: (map['disabled'] as Map).cast<String, dynamic>(),
      filter: GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse.fromMap(
        (map['filter'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
