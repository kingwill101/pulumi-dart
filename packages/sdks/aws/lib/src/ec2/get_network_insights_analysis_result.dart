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
  final List<GetNetworkInsightsAnalysisAlternatePathHint>? alternatePathHints;
  /// ARN of the selected Network Insights Analysis.
  final String? arn;
  /// Explanation codes for an unreachable path.
  final List<GetNetworkInsightsAnalysisExplanation>? explanations;
  /// ARNs of the AWS resources that the path must traverse.
  final List<String>? filterInArns;
  final List<GetNetworkInsightsAnalysisFilter>? filters;
  /// The components in the path from source to destination.
  final List<GetNetworkInsightsAnalysisForwardPathComponent>? forwardPathComponents;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? networkInsightsAnalysisId;
  /// The ID of the path.
  final String? networkInsightsPathId;
  /// Set to `true` if the destination was reachable.
  final bool? pathFound;
  final String? region;
  /// The components in the path from destination to source.
  final List<GetNetworkInsightsAnalysisReturnPathComponent>? returnPathComponents;
  /// Date/time the analysis was started.
  final String? startDate;
  /// Status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `pathFound`.
  final String? status;
  /// Message to provide more context when the `status` is `failed`.
  final String? statusMessage;
  final Map<String, String>? tags;
  /// Warning message.
  final String? warningMessage;

  /// Creates a new [GetNetworkInsightsAnalysisResult].
  /// [alternatePathHints] Potential intermediate components of a feasible path.
  /// [arn] ARN of the selected Network Insights Analysis.
  /// [explanations] Explanation codes for an unreachable path.
  /// [filterInArns] ARNs of the AWS resources that the path must traverse.
  /// [filters] Optional.
  /// [forwardPathComponents] The components in the path from source to destination.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networkInsightsAnalysisId] Optional.
  /// [networkInsightsPathId] The ID of the path.
  /// [pathFound] Set to `true` if the destination was reachable.
  /// [region] Optional.
  /// [returnPathComponents] The components in the path from destination to source.
  /// [startDate] Date/time the analysis was started.
  /// [status] Status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `pathFound`.
  /// [statusMessage] Message to provide more context when the `status` is `failed`.
  /// [tags] Optional.
  /// [warningMessage] Warning message.
  const GetNetworkInsightsAnalysisResult({
    this.alternatePathHints,
    this.arn,
    this.explanations,
    this.filterInArns,
    this.filters,
    this.forwardPathComponents,
    this.id,
    this.networkInsightsAnalysisId,
    this.networkInsightsPathId,
    this.pathFound,
    this.region,
    this.returnPathComponents,
    this.startDate,
    this.status,
    this.statusMessage,
    this.tags,
    this.warningMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternatePathHints': ?(() { final guardedValue = alternatePathHints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsAnalysisAlternatePathHint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': ?arn,
      'explanations': ?(() { final guardedValue = explanations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsAnalysisExplanation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filterInArns': ?filterInArns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsAnalysisFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'forwardPathComponents': ?(() { final guardedValue = forwardPathComponents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsAnalysisForwardPathComponent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'networkInsightsAnalysisId': ?networkInsightsAnalysisId,
      'networkInsightsPathId': ?networkInsightsPathId,
      'pathFound': ?pathFound,
      'region': ?region,
      'returnPathComponents': ?(() { final guardedValue = returnPathComponents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'startDate': ?startDate,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
      'warningMessage': ?warningMessage,
    };
  }

  factory GetNetworkInsightsAnalysisResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisResult(
      alternatePathHints: (() { final guardedValue = map['alternatePathHints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsAnalysisAlternatePathHint>(guardedValue, (value) => GetNetworkInsightsAnalysisAlternatePathHint.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      explanations: (() { final guardedValue = map['explanations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsAnalysisExplanation>(guardedValue, (value) => GetNetworkInsightsAnalysisExplanation.fromMap((value as Map).cast<String, dynamic>())); })(),
      filterInArns: (() { final guardedValue = map['filterInArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsAnalysisFilter>(guardedValue, (value) => GetNetworkInsightsAnalysisFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      forwardPathComponents: (() { final guardedValue = map['forwardPathComponents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsAnalysisForwardPathComponent>(guardedValue, (value) => GetNetworkInsightsAnalysisForwardPathComponent.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInsightsAnalysisId: (() { final guardedValue = map['networkInsightsAnalysisId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInsightsPathId: (() { final guardedValue = map['networkInsightsPathId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pathFound: (() { final guardedValue = map['pathFound']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      returnPathComponents: (() { final guardedValue = map['returnPathComponents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponent>(guardedValue, (value) => GetNetworkInsightsAnalysisReturnPathComponent.fromMap((value as Map).cast<String, dynamic>())); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      warningMessage: (() { final guardedValue = map['warningMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
