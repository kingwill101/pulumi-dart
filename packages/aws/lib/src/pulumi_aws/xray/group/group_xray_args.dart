// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_insights_configuration/group_insights_configuration.dart';

/// The set of arguments for Group.
class GroupXrayArgs {
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

  GroupXrayArgs({
    required this.filterExpression,
    required this.groupName,
    this.insightsConfiguration,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filterExpression'] = filterExpression;
    map['groupName'] = groupName;
    final insightsConfigurationValue = insightsConfiguration;
    if (insightsConfigurationValue != null) {
      map['insightsConfiguration'] = pulumi.Input.mapOptionalInputValue<
              GroupInsightsConfiguration, Map<String, dynamic>>(
          insightsConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GroupXrayArgs.fromMap(Map<String, dynamic> map) {
    return GroupXrayArgs(
      filterExpression: pulumi.Input.asInput<String>(map['filterExpression']),
      groupName: pulumi.Input.asInput<String>(map['groupName']),
      insightsConfiguration:
          pulumi.Input.asOptionalInput<GroupInsightsConfiguration>(
              map['insightsConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
