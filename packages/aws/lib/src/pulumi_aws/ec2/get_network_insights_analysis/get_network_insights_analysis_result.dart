// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_network_insights_analysis_alternate_path_hint/get_network_insights_analysis_alternate_path_hint.dart';
import '../get_network_insights_analysis_explanation/get_network_insights_analysis_explanation.dart';
import '../get_network_insights_analysis_filter/get_network_insights_analysis_filter.dart';
import '../get_network_insights_analysis_forward_path_component/get_network_insights_analysis_forward_path_component.dart';
import '../get_network_insights_analysis_return_path_component/get_network_insights_analysis_return_path_component.dart';

/// Result data returned by getNetworkInsightsAnalysis.
class GetNetworkInsightsAnalysisResult {
  /// Potential intermediate components of a feasible path.
  final List<GetNetworkInsightsAnalysisAlternatePathHint> alternatePathHints;

  /// ARN of the selected Network Insights Analysis.
  final String arn;

  /// Explanation codes for an unreachable path.
  final List<GetNetworkInsightsAnalysisExplanation> explanations;

  /// ARNs of the AWS resources that the path must traverse.
  final List<String> filterInArns;
  final List<GetNetworkInsightsAnalysisFilter>? filters;

  /// The components in the path from source to destination.
  final List<GetNetworkInsightsAnalysisForwardPathComponent>
      forwardPathComponents;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String networkInsightsAnalysisId;

  /// The ID of the path.
  final String networkInsightsPathId;

  /// Set to `true` if the destination was reachable.
  final bool pathFound;
  final String region;

  /// The components in the path from destination to source.
  final List<GetNetworkInsightsAnalysisReturnPathComponent>
      returnPathComponents;

  /// Date/time the analysis was started.
  final String startDate;

  /// Status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `path_found`.
  final String status;

  /// Message to provide more context when the `status` is `failed`.
  final String statusMessage;
  final Map<String, String> tags;

  /// Warning message.
  final String warningMessage;

  GetNetworkInsightsAnalysisResult({
    required this.alternatePathHints,
    required this.arn,
    required this.explanations,
    required this.filterInArns,
    this.filters,
    required this.forwardPathComponents,
    required this.id,
    required this.networkInsightsAnalysisId,
    required this.networkInsightsPathId,
    required this.pathFound,
    required this.region,
    required this.returnPathComponents,
    required this.startDate,
    required this.status,
    required this.statusMessage,
    required this.tags,
    required this.warningMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alternatePathHints'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisAlternatePathHint,
        Map<String, dynamic>>(alternatePathHints, (value) => value.toMap());
    map['arn'] = arn;
    map['explanations'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisExplanation,
        Map<String, dynamic>>(explanations, (value) => value.toMap());
    map['filterInArns'] = filterInArns;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetNetworkInsightsAnalysisFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['forwardPathComponents'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponent,
        Map<String, dynamic>>(forwardPathComponents, (value) => value.toMap());
    map['id'] = id;
    map['networkInsightsAnalysisId'] = networkInsightsAnalysisId;
    map['networkInsightsPathId'] = networkInsightsPathId;
    map['pathFound'] = pathFound;
    map['region'] = region;
    map['returnPathComponents'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponent,
        Map<String, dynamic>>(returnPathComponents, (value) => value.toMap());
    map['startDate'] = startDate;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    map['tags'] = tags;
    map['warningMessage'] = warningMessage;
    return map;
  }

  factory GetNetworkInsightsAnalysisResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisResult(
      alternatePathHints:
          pulumi.Input.decodeList<GetNetworkInsightsAnalysisAlternatePathHint>(
              map['alternatePathHints'],
              (value) => GetNetworkInsightsAnalysisAlternatePathHint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      explanations:
          pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanation>(
              map['explanations'],
              (value) => GetNetworkInsightsAnalysisExplanation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      filterInArns: (map['filterInArns'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetNetworkInsightsAnalysisFilter>(
              map['filters'],
              (value) => GetNetworkInsightsAnalysisFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      forwardPathComponents: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponent>(
          map['forwardPathComponents'],
          (value) => GetNetworkInsightsAnalysisForwardPathComponent.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      networkInsightsAnalysisId: map['networkInsightsAnalysisId'] as String,
      networkInsightsPathId: map['networkInsightsPathId'] as String,
      pathFound: map['pathFound'] as bool,
      region: map['region'] as String,
      returnPathComponents: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponent>(
          map['returnPathComponents'],
          (value) => GetNetworkInsightsAnalysisReturnPathComponent.fromMap(
              (value as Map).cast<String, dynamic>())),
      startDate: map['startDate'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      warningMessage: map['warningMessage'] as String,
    );
  }
}
