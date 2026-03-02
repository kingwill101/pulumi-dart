// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_alternate_path_hint.dart';
import 'network_insights_analysis_explanation.dart';
import 'network_insights_analysis_forward_path_component.dart';
import 'network_insights_analysis_return_path_component.dart';

/// Input properties used for looking up and filtering NetworkInsightsAnalysis resources.
class NetworkInsightsAnalysisState {
  /// Potential intermediate components of a feasible path. Described below.
  final pulumi.Input<List<NetworkInsightsAnalysisAlternatePathHint>>? alternatePathHints;
  /// ARN of the Network Insights Analysis.
  final pulumi.Input<String>? arn;
  /// Explanation codes for an unreachable path. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Explanation.html) for details.
  final pulumi.Input<List<NetworkInsightsAnalysisExplanation>>? explanations;
  /// A list of ARNs for resources the path must traverse.
  final pulumi.Input<List<String>>? filterInArns;
  /// The components in the path from source to destination. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponent>>? forwardPathComponents;
  /// ID of the Network Insights Path to run an analysis on.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? networkInsightsPathId;
  /// Set to `true` if the destination was reachable.
  final pulumi.Input<bool>? pathFound;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The components in the path from destination to source. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponent>>? returnPathComponents;
  /// The date/time the analysis was started.
  final pulumi.Input<String>? startDate;
  /// The status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `path_found`.
  final pulumi.Input<String>? status;
  /// A message to provide more context when the `status` is `failed`.
  final pulumi.Input<String>? statusMessage;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// If enabled, the resource will wait for the Network Insights Analysis status to change to `succeeded` or `failed`. Setting this to `false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForCompletion;
  /// The warning message.
  final pulumi.Input<String>? warningMessage;

  /// Creates a new [NetworkInsightsAnalysisState].
  /// [alternatePathHints] Potential intermediate components of a feasible path. Described below.
  /// [arn] ARN of the Network Insights Analysis.
  /// [explanations] Explanation codes for an unreachable path. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Explanation.html) for details.
  /// [filterInArns] A list of ARNs for resources the path must traverse.
  /// [forwardPathComponents] The components in the path from source to destination. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  /// [networkInsightsPathId] ID of the Network Insights Path to run an analysis on.
  /// [pathFound] Set to `true` if the destination was reachable.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [returnPathComponents] The components in the path from destination to source. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  /// [startDate] The date/time the analysis was started.
  /// [status] The status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `path_found`.
  /// [statusMessage] A message to provide more context when the `status` is `failed`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [waitForCompletion] If enabled, the resource will wait for the Network Insights Analysis status to change to `succeeded` or `failed`. Setting this to `false` will skip the process. Default: `true`.
  /// [warningMessage] The warning message.
  NetworkInsightsAnalysisState({
    this.alternatePathHints,
    this.arn,
    this.explanations,
    this.filterInArns,
    this.forwardPathComponents,
    this.networkInsightsPathId,
    this.pathFound,
    this.region,
    this.returnPathComponents,
    this.startDate,
    this.status,
    this.statusMessage,
    this.tags,
    this.tagsAll,
    this.waitForCompletion,
    this.warningMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternatePathHints': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisAlternatePathHint>, List<Map<String, dynamic>>>(alternatePathHints, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisAlternatePathHint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'explanations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisExplanation>, List<Map<String, dynamic>>>(explanations, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisExplanation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filterInArns': ?filterInArns,
      'forwardPathComponents': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponent>, List<Map<String, dynamic>>>(forwardPathComponents, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInsightsPathId': ?networkInsightsPathId,
      'pathFound': ?pathFound,
      'region': ?region,
      'returnPathComponents': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponent>, List<Map<String, dynamic>>>(returnPathComponents, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startDate': ?startDate,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'waitForCompletion': ?waitForCompletion,
      'warningMessage': ?warningMessage,
    };
  }

  factory NetworkInsightsAnalysisState.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisState(
      alternatePathHints: map['alternatePathHints'] == null ? null : ((pulumi.Input.decodeList<NetworkInsightsAnalysisAlternatePathHint>(map['alternatePathHints']!, (value) => NetworkInsightsAnalysisAlternatePathHint.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      explanations: map['explanations'] == null ? null : ((pulumi.Input.decodeList<NetworkInsightsAnalysisExplanation>(map['explanations']!, (value) => NetworkInsightsAnalysisExplanation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      filterInArns: map['filterInArns'] == null ? null : (((map['filterInArns'] as List).cast<String>()).input()).input(),
      forwardPathComponents: map['forwardPathComponents'] == null ? null : ((pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponent>(map['forwardPathComponents']!, (value) => NetworkInsightsAnalysisForwardPathComponent.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      networkInsightsPathId: map['networkInsightsPathId'] == null ? null : ((map['networkInsightsPathId'] as String).input()).input(),
      pathFound: map['pathFound'] == null ? null : ((map['pathFound'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      returnPathComponents: map['returnPathComponents'] == null ? null : ((pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponent>(map['returnPathComponents']!, (value) => NetworkInsightsAnalysisReturnPathComponent.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      startDate: map['startDate'] == null ? null : ((map['startDate'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      statusMessage: map['statusMessage'] == null ? null : ((map['statusMessage'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      waitForCompletion: map['waitForCompletion'] == null ? null : ((map['waitForCompletion'] as bool).input()).input(),
      warningMessage: map['warningMessage'] == null ? null : ((map['warningMessage'] as String).input()).input(),
    );
  }
}

