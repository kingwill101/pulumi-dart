// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_retail_v2beta_condition_query_term_response.dart';
import 'google_cloud_retail_v2beta_condition_time_range_response.dart';

/// Metadata that is used to define a condition that triggers an action. A valid condition must specify at least one of 'query_terms' or 'products_filter'. If multiple fields are specified, the condition is met if all the fields are satisfied e.g. if a set of query terms and product_filter are set, then only items matching the product_filter for requests with a query matching the query terms wil get boosted.
class GoogleCloudRetailV2betaConditionResponse {
  /// Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  final List<GoogleCloudRetailV2betaConditionTimeRangeResponse> activeTimeRange;

  /// Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  final List<String> pageCategories;

  /// A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  final List<GoogleCloudRetailV2betaConditionQueryTermResponse> queryTerms;

  GoogleCloudRetailV2betaConditionResponse({
    required this.activeTimeRange,
    required this.pageCategories,
    required this.queryTerms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activeTimeRange'] = Input.encodeList<
        GoogleCloudRetailV2betaConditionTimeRangeResponse,
        Map<String, dynamic>>(activeTimeRange, (value) => value.toMap());
    map['pageCategories'] = pageCategories;
    map['queryTerms'] = Input.encodeList<
        GoogleCloudRetailV2betaConditionQueryTermResponse,
        Map<String, dynamic>>(queryTerms, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudRetailV2betaConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaConditionResponse(
      activeTimeRange:
          Input.decodeList<GoogleCloudRetailV2betaConditionTimeRangeResponse>(
              map['activeTimeRange'],
              (value) =>
                  GoogleCloudRetailV2betaConditionTimeRangeResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      pageCategories: (map['pageCategories'] as List).cast<String>(),
      queryTerms:
          Input.decodeList<GoogleCloudRetailV2betaConditionQueryTermResponse>(
              map['queryTerms'],
              (value) =>
                  GoogleCloudRetailV2betaConditionQueryTermResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
