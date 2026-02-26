// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../group_insights_configuration/group_insights_configuration.dart';

/// The set of arguments for Group.
class GroupArgs8 {
  /// The filter expression defining criteria by which to group traces. more info can be found in official [docs](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html).
  final Input<String> filterExpression;

  /// The name of the group.
  final Input<String> groupName;

  /// Configuration options for enabling insights.
  final Input<GroupInsightsConfiguration>? insightsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final Input<Map<String, String>>? tags;

  GroupArgs8({
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
      map['insightsConfiguration'] = Input.mapOptionalInputValue<
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

  factory GroupArgs8.fromMap(Map<String, dynamic> map) {
    return GroupArgs8(
      filterExpression: Input.asInput<String>(map['filterExpression']),
      groupName: Input.asInput<String>(map['groupName']),
      insightsConfiguration: Input.asOptionalInput<GroupInsightsConfiguration>(
          map['insightsConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
