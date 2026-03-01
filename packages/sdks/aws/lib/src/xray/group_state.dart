// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_insights_configuration.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The ARN of the Group.
  final pulumi.Input<String>? arn;
  /// The filter expression defining criteria by which to group traces. more info can be found in official [docs](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html).
  final pulumi.Input<String>? filterExpression;
  /// The name of the group.
  final pulumi.Input<String>? groupName;
  /// Configuration options for enabling insights.
  final pulumi.Input<GroupInsightsConfiguration>? insightsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [GroupState].
  /// [arn] The ARN of the Group.
  /// [filterExpression] The filter expression defining criteria by which to group traces. more info can be found in official [docs](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html).
  /// [groupName] The name of the group.
  /// [insightsConfiguration] Configuration options for enabling insights.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  GroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? filterExpression,
    pulumi.Output<String>? groupName,
    pulumi.Output<GroupInsightsConfiguration>? insightsConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      filterExpression = pulumi.Input.asOptionalInput<String>(filterExpression),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      insightsConfiguration = pulumi.Input.asOptionalInput<GroupInsightsConfiguration>(insightsConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'filterExpression': ?filterExpression,
      'groupName': ?groupName,
      'insightsConfiguration': ?pulumi.Input.mapOptionalInputValue<GroupInsightsConfiguration, Map<String, dynamic>>(insightsConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      filterExpression: map['filterExpression'] == null ? null : pulumi.Output.create<String>(map['filterExpression'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      insightsConfiguration: map['insightsConfiguration'] == null ? null : pulumi.Output.create<GroupInsightsConfiguration>(GroupInsightsConfiguration.fromMap((map['insightsConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

