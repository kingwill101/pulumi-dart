// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkInsightsAnalysis.
class NetworkInsightsAnalysisArgs {
  /// A list of ARNs for resources the path must traverse.
  final Input<List<String>>? filterInArns;

  /// ID of the Network Insights Path to run an analysis on.
  ///
  /// The following arguments are optional:
  final Input<String> networkInsightsPathId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// If enabled, the resource will wait for the Network Insights Analysis status to change to <span pulumi-lang-nodejs="`succeeded`" pulumi-lang-dotnet="`Succeeded`" pulumi-lang-go="`succeeded`" pulumi-lang-python="`succeeded`" pulumi-lang-yaml="`succeeded`" pulumi-lang-java="`succeeded`">`succeeded`</span> or <span pulumi-lang-nodejs="`failed`" pulumi-lang-dotnet="`Failed`" pulumi-lang-go="`failed`" pulumi-lang-python="`failed`" pulumi-lang-yaml="`failed`" pulumi-lang-java="`failed`">`failed`</span>. Setting this to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will skip the process. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? waitForCompletion;

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
      filterInArns: Input.asOptionalInput<List<String>>(map['filterInArns']),
      networkInsightsPathId:
          Input.asInput<String>(map['networkInsightsPathId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      waitForCompletion: Input.asOptionalInput<bool>(map['waitForCompletion']),
    );
  }
}
