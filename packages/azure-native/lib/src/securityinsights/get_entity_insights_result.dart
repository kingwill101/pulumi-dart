// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_insight_item_response.dart';
import 'get_insights_results_metadata_response.dart';

/// Result data returned by getEntityInsights.
class GetEntityInsightsResult {
  /// The metadata from the get insights operation results.
  final GetInsightsResultsMetadataResponse? metaData;
  /// The insights result values.
  final List<EntityInsightItemResponse>? value;

  /// Creates a new [GetEntityInsightsResult].
  /// [metaData] The metadata from the get insights operation results.
  /// [value] The insights result values.
  GetEntityInsightsResult({
    this.metaData,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metaData': ?metaData == null ? null : metaData!.toMap(),
      'value': ?value == null ? null : pulumi.Input.encodeList<EntityInsightItemResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetEntityInsightsResult.fromMap(Map<String, dynamic> map) {
    return GetEntityInsightsResult(
      metaData: map['metaData'] == null ? null : GetInsightsResultsMetadataResponse.fromMap((map['metaData'] as Map).cast<String, dynamic>()),
      value: map['value'] == null ? null : pulumi.Input.decodeList<EntityInsightItemResponse>(map['value'], (value) => EntityInsightItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

