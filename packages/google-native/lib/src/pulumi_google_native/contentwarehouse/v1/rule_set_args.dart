// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_rule.dart';

/// The set of arguments for RuleSet.
class RuleSetArgs {
  /// Short description of the rule-set.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;

  /// The resource name of the rule set. Managed internally. Format: projects/{project_number}/locations/{location}/ruleSet/{rule_set_id}. The name is ignored when creating a rule set.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// List of rules given by the customer.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1Rule>>? rules;

  /// Source of the rules i.e., customer name.
  final pulumi.Input<String>? source;

  RuleSetArgs({
    this.description,
    this.location,
    this.name,
    this.project,
    this.rules,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudContentwarehouseV1Rule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1Rule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory RuleSetArgs.fromMap(Map<String, dynamic> map) {
    return RuleSetArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rules:
          pulumi.Input.asOptionalInput<List<GoogleCloudContentwarehouseV1Rule>>(
              map['rules']),
      source: pulumi.Input.asOptionalInput<String>(map['source']),
    );
  }
}
