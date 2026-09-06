// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy_properties.dart';

/// {@template pulumi_durabletask_retention_policy_args_doc}
/// The set of arguments for RetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_durabletask_retention_policy_args_doc}
class RetentionPolicyArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<RetentionPolicyProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Scheduler
  final pulumi.Input<String> schedulerName;

  /// Creates a new [RetentionPolicyArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schedulerName] The name of the Scheduler
  const RetentionPolicyArgs({
    this.properties,
    required this.resourceGroupName,
    required this.schedulerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<RetentionPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'schedulerName': schedulerName,
    };
  }

  factory RetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionPolicyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schedulerName: pulumi.Input.fromValue(map['schedulerName'] as String),
    );
  }
}
