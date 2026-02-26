// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_filter/get_network_insights_analysis_filter.dart';

/// Arguments for getNetworkInsightsAnalysis.
class GetNetworkInsightsAnalysisArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Network Insights Analyzes. The given filters must match exactly one Network Insights Analysis
  /// whose data will be exported as attributes.
  final Input<List<GetNetworkInsightsAnalysisFilter>>? filters;

  /// ID of the Network Insights Analysis to select.
  final Input<String>? networkInsightsAnalysisId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<Map<String, String>>? tags;

  GetNetworkInsightsAnalysisArgs({
    this.filters,
    this.networkInsightsAnalysisId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetNetworkInsightsAnalysisFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetNetworkInsightsAnalysisFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkInsightsAnalysisIdValue = networkInsightsAnalysisId;
    if (networkInsightsAnalysisIdValue != null) {
      map['networkInsightsAnalysisId'] = networkInsightsAnalysisIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetNetworkInsightsAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisArgs(
      filters: Input.asOptionalInput<List<GetNetworkInsightsAnalysisFilter>>(
          map['filters']),
      networkInsightsAnalysisId:
          Input.asOptionalInput<String>(map['networkInsightsAnalysisId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
