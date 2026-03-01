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
    required pulumi.Output<String> filterExpression,
    required pulumi.Output<String> groupName,
    pulumi.Output<GroupInsightsConfiguration>? insightsConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filterExpression = pulumi.Input.asInput<String>(filterExpression),
      groupName = pulumi.Input.asInput<String>(groupName),
      insightsConfiguration = pulumi.Input.asOptionalInput<GroupInsightsConfiguration>(insightsConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      filterExpression: pulumi.Output.create<String>(map['filterExpression'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      insightsConfiguration: map['insightsConfiguration'] == null ? null : pulumi.Output.create<GroupInsightsConfiguration>(GroupInsightsConfiguration.fromMap((map['insightsConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

