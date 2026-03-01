// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_properties.dart';

/// {@template pulumi_alertsmanagement_alert_processing_rule_by_name_args_doc}
/// The set of arguments for AlertProcessingRuleByName.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_alert_processing_rule_by_name_args_doc}
class AlertProcessingRuleByNameArgs {
  /// The name of the alert processing rule that needs to be created/updated.
  final pulumi.Input<String>? alertProcessingRuleName;
  /// Resource location
  final pulumi.Input<String>? location;
  /// Alert processing rule properties.
  final pulumi.Input<AlertProcessingRuleProperties>? properties;
  /// Resource group name where the resource is created.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AlertProcessingRuleByNameArgs].
  /// [alertProcessingRuleName] The name of the alert processing rule that needs to be created/updated.
  /// [location] Resource location
  /// [properties] Alert processing rule properties.
  /// [resourceGroupName] Resource group name where the resource is created.
  /// [tags] Resource tags
  AlertProcessingRuleByNameArgs({
    pulumi.Output<String>? alertProcessingRuleName,
    pulumi.Output<String>? location,
    pulumi.Output<AlertProcessingRuleProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      alertProcessingRuleName = pulumi.Input.asOptionalInput<String>(alertProcessingRuleName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<AlertProcessingRuleProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertProcessingRuleName': ?alertProcessingRuleName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AlertProcessingRuleByNameArgs.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleByNameArgs(
      alertProcessingRuleName: map['alertProcessingRuleName'] == null ? null : pulumi.Output.create<String>(map['alertProcessingRuleName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AlertProcessingRuleProperties>(AlertProcessingRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

