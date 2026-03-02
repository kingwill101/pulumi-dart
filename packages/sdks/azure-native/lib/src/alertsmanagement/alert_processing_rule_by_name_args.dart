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
    this.alertProcessingRuleName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      alertProcessingRuleName: map['alertProcessingRuleName'] == null ? null : (map['alertProcessingRuleName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (AlertProcessingRuleProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

