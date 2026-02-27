// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_search_response_summary_safety_attributes.dart';
import 'google_cloud_discoveryengine_v1beta_search_response_summary_summary_skipped_reasons_item.dart';

/// Summary of the top N search result specified by the summary spec.
class GoogleCloudDiscoveryengineV1betaSearchResponseSummary {
  /// A collection of Safety Attribute categories and their associated confidence scores.
  final GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes?
      safetyAttributes;

  /// Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  final List<
          GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem>?
      summarySkippedReasons;

  /// The summary content.
  final String? summaryText;

  GoogleCloudDiscoveryengineV1betaSearchResponseSummary({
    this.safetyAttributes,
    this.summarySkippedReasons,
    this.summaryText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final safetyAttributesValue = safetyAttributes;
    if (safetyAttributesValue != null) {
      map['safetyAttributes'] = safetyAttributesValue.toMap();
    }
    final summarySkippedReasonsValue = summarySkippedReasons;
    if (summarySkippedReasonsValue != null) {
      map['summarySkippedReasons'] = pulumi.Input.encodeList<
          GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem,
          String>(summarySkippedReasonsValue, (value) => value.value);
    }
    final summaryTextValue = summaryText;
    if (summaryTextValue != null) {
      map['summaryText'] = summaryTextValue;
    }
    return map;
  }

  factory GoogleCloudDiscoveryengineV1betaSearchResponseSummary.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaSearchResponseSummary(
      safetyAttributes: map['safetyAttributes'] == null
          ? null
          : GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes
              .fromMap(
                  (map['safetyAttributes'] as Map).cast<String, dynamic>()),
      summarySkippedReasons: map['summarySkippedReasons'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem>(
              map['summarySkippedReasons'],
              (value) =>
                  GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem
                      .fromValue(value as String)),
      summaryText:
          map['summaryText'] == null ? null : map['summaryText'] as String,
    );
  }
}
