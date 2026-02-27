// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_retail_v2alpha_condition_query_term.dart';
import 'google_cloud_retail_v2alpha_condition_time_range.dart';

/// Metadata that is used to define a condition that triggers an action. A valid condition must specify at least one of 'query_terms' or 'products_filter'. If multiple fields are specified, the condition is met if all the fields are satisfied e.g. if a set of query terms and product_filter are set, then only items matching the product_filter for requests with a query matching the query terms wil get boosted.
class GoogleCloudRetailV2alphaCondition {
  /// Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  final List<GoogleCloudRetailV2alphaConditionTimeRange>? activeTimeRange;

  /// Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  final List<String>? pageCategories;

  /// A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  final List<GoogleCloudRetailV2alphaConditionQueryTerm>? queryTerms;

  GoogleCloudRetailV2alphaCondition({
    this.activeTimeRange,
    this.pageCategories,
    this.queryTerms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeTimeRangeValue = activeTimeRange;
    if (activeTimeRangeValue != null) {
      map['activeTimeRange'] = Input.encodeList<
          GoogleCloudRetailV2alphaConditionTimeRange,
          Map<String, dynamic>>(activeTimeRangeValue, (value) => value.toMap());
    }
    final pageCategoriesValue = pageCategories;
    if (pageCategoriesValue != null) {
      map['pageCategories'] = pageCategoriesValue;
    }
    final queryTermsValue = queryTerms;
    if (queryTermsValue != null) {
      map['queryTerms'] = Input.encodeList<
          GoogleCloudRetailV2alphaConditionQueryTerm,
          Map<String, dynamic>>(queryTermsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaCondition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaCondition(
      activeTimeRange: map['activeTimeRange'] == null
          ? null
          : Input.decodeList<GoogleCloudRetailV2alphaConditionTimeRange>(
              map['activeTimeRange'],
              (value) => GoogleCloudRetailV2alphaConditionTimeRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pageCategories: map['pageCategories'] == null
          ? null
          : (map['pageCategories'] as List).cast<String>(),
      queryTerms: map['queryTerms'] == null
          ? null
          : Input.decodeList<GoogleCloudRetailV2alphaConditionQueryTerm>(
              map['queryTerms'],
              (value) => GoogleCloudRetailV2alphaConditionQueryTerm.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
