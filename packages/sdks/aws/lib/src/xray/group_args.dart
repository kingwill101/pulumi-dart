// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_insights_configuration.dart';

/// {@template pulumi_xray_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_xray_group_group_args_doc}
class GroupArgs {
  /// The filter expression defining criteria by which to group traces. more info can be found in official [docs](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html).
  final pulumi.Input<String> filterExpression;
  /// The name of the group.
  final pulumi.Input<String> groupName;
  /// Configuration options for enabling insights.
  final pulumi.Input<GroupInsightsConfiguration>? insightsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GroupArgs].
  /// [filterExpression] The filter expression defining criteria by which to group traces. more info can be found in official [docs](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html).
  /// [groupName] The name of the group.
  /// [insightsConfiguration] Configuration options for enabling insights.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  GroupArgs({
    required this.filterExpression,
    required this.groupName,
    this.insightsConfiguration,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterExpression': filterExpression,
      'groupName': groupName,
      'insightsConfiguration': ?pulumi.Input.mapOptionalInputValue<GroupInsightsConfiguration, Map<String, dynamic>>(insightsConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      filterExpression: (map['filterExpression'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      insightsConfiguration: map['insightsConfiguration'] == null ? null : (GroupInsightsConfiguration.fromMap((map['insightsConfiguration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

