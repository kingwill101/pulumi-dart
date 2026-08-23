// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_filter.dart';

/// {@template pulumi_ec2_get_network_insights_analysis_get_network_insights_analysis_args_doc}
/// Arguments for getNetworkInsightsAnalysis.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_network_insights_analysis_get_network_insights_analysis_args_doc}
class GetNetworkInsightsAnalysisArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Network Insights Analyzes. The given filters must match exactly one Network Insights Analysis
  /// whose data will be exported as attributes.
  final pulumi.Input<List<GetNetworkInsightsAnalysisFilter>>? filters;
  /// ID of the Network Insights Analysis to select.
  final pulumi.Input<String>? networkInsightsAnalysisId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetNetworkInsightsAnalysisArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [networkInsightsAnalysisId] ID of the Network Insights Analysis to select.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  const GetNetworkInsightsAnalysisArgs({
    this.filters,
    this.networkInsightsAnalysisId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNetworkInsightsAnalysisFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInsightsAnalysisId': ?networkInsightsAnalysisId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetNetworkInsightsAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisFilter>(guardedValue, (value) => GetNetworkInsightsAnalysisFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkInsightsAnalysisId: (() { final guardedValue = map['networkInsightsAnalysisId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
