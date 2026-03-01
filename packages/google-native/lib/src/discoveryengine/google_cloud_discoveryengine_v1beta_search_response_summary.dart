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
    GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem
  >?
  summarySkippedReasons;

  /// The summary content.
  final String? summaryText;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaSearchResponseSummary].
  /// [safetyAttributes] A collection of Safety Attribute categories and their associated confidence scores.
  /// [summarySkippedReasons] Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is skipped, this field is not set.
  /// [summaryText] The summary content.
  GoogleCloudDiscoveryengineV1betaSearchResponseSummary({
    this.safetyAttributes,
    this.summarySkippedReasons,
    this.summaryText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'safetyAttributes': ?safetyAttributes == null
          ? null
          : safetyAttributes!.toMap(),
      'summarySkippedReasons': ?summarySkippedReasons == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem,
              String
            >(summarySkippedReasons!, (value) => value.value),
      'summaryText': ?summaryText,
    };
  }

  factory GoogleCloudDiscoveryengineV1betaSearchResponseSummary.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1betaSearchResponseSummary(
      safetyAttributes: map['safetyAttributes'] == null
          ? null
          : GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes.fromMap(
              (map['safetyAttributes'] as Map).cast<String, dynamic>(),
            ),
      summarySkippedReasons: map['summarySkippedReasons'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem
            >(
              map['summarySkippedReasons'],
              (value) =>
                  GoogleCloudDiscoveryengineV1betaSearchResponseSummarySummarySkippedReasonsItem.fromValue(
                    value as String,
                  ),
            ),
      summaryText: map['summaryText'] == null
          ? null
          : map['summaryText'] as String,
    );
  }
}
