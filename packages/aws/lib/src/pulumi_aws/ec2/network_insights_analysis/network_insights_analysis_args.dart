// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkInsightsAnalysis.
class NetworkInsightsAnalysisArgs {
  /// A list of ARNs for resources the path must traverse.
  final pulumi.Input<List<String>>? filterInArns;

  /// ID of the Network Insights Path to run an analysis on.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> networkInsightsPathId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// If enabled, the resource will wait for the Network Insights Analysis status to change to `succeeded` or `failed`. Setting this to `false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForCompletion;

  NetworkInsightsAnalysisArgs({
    this.filterInArns,
    required this.networkInsightsPathId,
    this.region,
    this.tags,
    this.waitForCompletion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterInArnsValue = filterInArns;
    if (filterInArnsValue != null) {
      map['filterInArns'] = filterInArnsValue;
    }
    map['networkInsightsPathId'] = networkInsightsPathId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final waitForCompletionValue = waitForCompletion;
    if (waitForCompletionValue != null) {
      map['waitForCompletion'] = waitForCompletionValue;
    }
    return map;
  }

  factory NetworkInsightsAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisArgs(
      filterInArns:
          pulumi.Input.asOptionalInput<List<String>>(map['filterInArns']),
      networkInsightsPathId:
          pulumi.Input.asInput<String>(map['networkInsightsPathId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      waitForCompletion:
          pulumi.Input.asOptionalInput<bool>(map['waitForCompletion']),
    );
  }
}
