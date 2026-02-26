// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_path_filter/get_network_insights_path_filter.dart';

/// Arguments for getNetworkInsightsPath.
class GetNetworkInsightsPathArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Network Insights Paths. The given filters must match exactly one Network Insights Path
  /// whose data will be exported as attributes.
  final Input<List<GetNetworkInsightsPathFilter>>? filters;

  /// ID of the Network Insights Path to select.
  final Input<String>? networkInsightsPathId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource.
  final Input<Map<String, String>>? tags;

  GetNetworkInsightsPathArgs({
    this.filters,
    this.networkInsightsPathId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetNetworkInsightsPathFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetNetworkInsightsPathFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkInsightsPathIdValue = networkInsightsPathId;
    if (networkInsightsPathIdValue != null) {
      map['networkInsightsPathId'] = networkInsightsPathIdValue;
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

  factory GetNetworkInsightsPathArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathArgs(
      filters: Input.asOptionalInput<List<GetNetworkInsightsPathFilter>>(
          map['filters']),
      networkInsightsPathId:
          Input.asOptionalInput<String>(map['networkInsightsPathId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
