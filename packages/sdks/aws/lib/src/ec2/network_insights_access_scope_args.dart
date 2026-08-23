// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_access_scope_exclude_path.dart';
import 'network_insights_access_scope_match_path.dart';

/// {@template pulumi_ec2_network_insights_access_scope_network_insights_access_scope_args_doc}
/// The set of arguments for NetworkInsightsAccessScope.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_insights_access_scope_network_insights_access_scope_args_doc}
class NetworkInsightsAccessScopeArgs {
  /// Set of access scope path statements to exclude.
  /// See `excludePaths` below for details.
  final pulumi.Input<List<NetworkInsightsAccessScopeExcludePath>>? excludePaths;
  /// Set of access scope path statements to match.
  /// At least one must be specified.
  /// See `matchPaths` below for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<NetworkInsightsAccessScopeMatchPath>>? matchPaths;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
  /// Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource.
  /// If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkInsightsAccessScopeArgs].
  /// [excludePaths] Set of access scope path statements to exclude.
  /// [matchPaths] Set of access scope path statements to match.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
  /// [tags] Map of tags to assign to the resource.
  const NetworkInsightsAccessScopeArgs({
    this.excludePaths,
    this.matchPaths,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludePaths': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAccessScopeExcludePath>, List<Map<String, dynamic>>>(excludePaths, (value) => pulumi.Input.encodeList<NetworkInsightsAccessScopeExcludePath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchPaths': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAccessScopeMatchPath>, List<Map<String, dynamic>>>(matchPaths, (value) => pulumi.Input.encodeList<NetworkInsightsAccessScopeMatchPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory NetworkInsightsAccessScopeArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeArgs(
      excludePaths: (() { final guardedValue = map['excludePaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAccessScopeExcludePath>(guardedValue, (value) => NetworkInsightsAccessScopeExcludePath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchPaths: (() { final guardedValue = map['matchPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAccessScopeMatchPath>(guardedValue, (value) => NetworkInsightsAccessScopeMatchPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
