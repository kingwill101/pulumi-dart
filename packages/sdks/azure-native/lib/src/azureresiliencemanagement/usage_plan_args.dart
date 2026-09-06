// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_properties.dart';

/// {@template pulumi_azureresiliencemanagement_usage_plan_args_doc}
/// The set of arguments for UsagePlan.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_usage_plan_args_doc}
class UsagePlanArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<UsagePlanProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the usage plan.
  final pulumi.Input<String?>? usagePlanName;

  /// Creates a new [UsagePlanArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [usagePlanName] The name of the usage plan.
  const UsagePlanArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.usagePlanName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<UsagePlanProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'usagePlanName': ?usagePlanName,
    };
  }

  factory UsagePlanArgs.fromMap(Map<String, dynamic> map) {
    return UsagePlanArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UsagePlanProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      usagePlanName: (() { final guardedValue = map['usagePlanName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
