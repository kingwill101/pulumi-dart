// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_alternate_path_hint.dart';
import 'get_network_insights_analysis_explanation.dart';
import 'get_network_insights_analysis_filter.dart';
import 'get_network_insights_analysis_forward_path_component.dart';
import 'get_network_insights_analysis_return_path_component.dart';

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
  final List<GetNetworkInsightsAnalysisForwardPathComponent> forwardPathComponents;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String networkInsightsAnalysisId;
  /// The ID of the path.
  final String networkInsightsPathId;
  /// Set to `true` if the destination was reachable.
  final bool pathFound;
  final String region;
  /// The components in the path from destination to source.
  final List<GetNetworkInsightsAnalysisReturnPathComponent> returnPathComponents;
  /// Date/time the analysis was started.
  final String startDate;
  /// Status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `path_found`.
  final String status;
  /// Message to provide more context when the `status` is `failed`.
  final String statusMessage;
  final Map<String, String> tags;
  /// Warning message.
  final String warningMessage;

  /// Creates a new [GetNetworkInsightsAnalysisResult].
  /// [alternatePathHints] Potential intermediate components of a feasible path.
  /// [arn] ARN of the selected Network Insights Analysis.
  /// [explanations] Explanation codes for an unreachable path.
  /// [filterInArns] ARNs of the AWS resources that the path must traverse.
  /// [filters] Optional.
  /// [forwardPathComponents] The components in the path from source to destination.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networkInsightsAnalysisId] Required.
  /// [networkInsightsPathId] The ID of the path.
  /// [pathFound] Set to `true` if the destination was reachable.
  /// [region] Required.
  /// [returnPathComponents] The components in the path from destination to source.
  /// [startDate] Date/time the analysis was started.
  /// [status] Status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `path_found`.
  /// [statusMessage] Message to provide more context when the `status` is `failed`.
  /// [tags] Required.
  /// [warningMessage] Warning message.
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
    return <String, dynamic>{
      'alternatePathHints': pulumi.Input.encodeList<GetNetworkInsightsAnalysisAlternatePathHint, Map<String, dynamic>>(alternatePathHints, (value) => value.toMap()),
      'arn': arn,
      'explanations': pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanation, Map<String, dynamic>>(explanations, (value) => value.toMap()),
      'filterInArns': filterInArns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsAnalysisFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'forwardPathComponents': pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponent, Map<String, dynamic>>(forwardPathComponents, (value) => value.toMap()),
      'id': id,
      'networkInsightsAnalysisId': networkInsightsAnalysisId,
      'networkInsightsPathId': networkInsightsPathId,
      'pathFound': pathFound,
      'region': region,
      'returnPathComponents': pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponent, Map<String, dynamic>>(returnPathComponents, (value) => value.toMap()),
      'startDate': startDate,
      'status': status,
      'statusMessage': statusMessage,
      'tags': tags,
      'warningMessage': warningMessage,
    };
  }

  factory GetNetworkInsightsAnalysisResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisResult(
      alternatePathHints: pulumi.Input.decodeList<GetNetworkInsightsAnalysisAlternatePathHint>(map['alternatePathHints']!, (value) => GetNetworkInsightsAnalysisAlternatePathHint.fromMap((value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      explanations: pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanation>(map['explanations']!, (value) => GetNetworkInsightsAnalysisExplanation.fromMap((value as Map).cast<String, dynamic>())),
      filterInArns: (map['filterInArns'] as List).cast<String>(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsAnalysisFilter>(guardedValue, (value) => GetNetworkInsightsAnalysisFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      forwardPathComponents: pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponent>(map['forwardPathComponents']!, (value) => GetNetworkInsightsAnalysisForwardPathComponent.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      networkInsightsAnalysisId: map['networkInsightsAnalysisId'] as String,
      networkInsightsPathId: map['networkInsightsPathId'] as String,
      pathFound: map['pathFound'] as bool,
      region: map['region'] as String,
      returnPathComponents: pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponent>(map['returnPathComponents']!, (value) => GetNetworkInsightsAnalysisReturnPathComponent.fromMap((value as Map).cast<String, dynamic>())),
      startDate: map['startDate'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      warningMessage: map['warningMessage'] as String,
    );
  }
}

