// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_condition_query_term.dart';
import 'google_cloud_retail_v2_condition_time_range.dart';

/// Metadata that is used to define a condition that triggers an action. A valid condition must specify at least one of 'query_terms' or 'products_filter'. If multiple fields are specified, the condition is met if all the fields are satisfied e.g. if a set of query terms and product_filter are set, then only items matching the product_filter for requests with a query matching the query terms wil get boosted.
class GoogleCloudRetailV2Condition {
  /// Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  final List<GoogleCloudRetailV2ConditionTimeRange>? activeTimeRange;

  /// Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  final List<String>? pageCategories;

  /// A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  final List<GoogleCloudRetailV2ConditionQueryTerm>? queryTerms;

  /// Creates a new [GoogleCloudRetailV2Condition].
  /// [activeTimeRange] Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  /// [pageCategories] Used to support browse uses cases. A list (up to 10 entries) of categories or departments. The format should be the same as UserEvent.page_categories;
  /// [queryTerms] A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  GoogleCloudRetailV2Condition({
    this.activeTimeRange,
    this.pageCategories,
    this.queryTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTimeRange': ?activeTimeRange == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudRetailV2ConditionTimeRange,
              Map<String, dynamic>
            >(activeTimeRange!, (value) => value.toMap()),
      'pageCategories': ?pageCategories,
      'queryTerms': ?queryTerms == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudRetailV2ConditionQueryTerm,
              Map<String, dynamic>
            >(queryTerms!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2Condition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2Condition(
      activeTimeRange: map['activeTimeRange'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudRetailV2ConditionTimeRange>(
              map['activeTimeRange'],
              (value) => GoogleCloudRetailV2ConditionTimeRange.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      pageCategories: map['pageCategories'] == null
          ? null
          : (map['pageCategories'] as List).cast<String>(),
      queryTerms: map['queryTerms'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudRetailV2ConditionQueryTerm>(
              map['queryTerms'],
              (value) => GoogleCloudRetailV2ConditionQueryTerm.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
