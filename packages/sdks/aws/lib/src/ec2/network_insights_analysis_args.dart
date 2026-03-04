// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_network_insights_analysis_network_insights_analysis_args_doc}
/// The set of arguments for NetworkInsightsAnalysis.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_insights_analysis_network_insights_analysis_args_doc}
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

  /// Creates a new [NetworkInsightsAnalysisArgs].
  /// [filterInArns] A list of ARNs for resources the path must traverse.
  /// [networkInsightsPathId] ID of the Network Insights Path to run an analysis on.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [waitForCompletion] If enabled, the resource will wait for the Network Insights Analysis status to change to `succeeded` or `failed`. Setting this to `false` will skip the process. Default: `true`.
  NetworkInsightsAnalysisArgs({
    this.filterInArns,
    required this.networkInsightsPathId,
    this.region,
    this.tags,
    this.waitForCompletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterInArns': ?filterInArns,
      'networkInsightsPathId': networkInsightsPathId,
      'region': ?region,
      'tags': ?tags,
      'waitForCompletion': ?waitForCompletion,
    };
  }

  factory NetworkInsightsAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisArgs(
      filterInArns: (() {
        final guardedValue = map['filterInArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      networkInsightsPathId: pulumi.Input.fromValue(
        map['networkInsightsPathId'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      waitForCompletion: (() {
        final guardedValue = map['waitForCompletion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
