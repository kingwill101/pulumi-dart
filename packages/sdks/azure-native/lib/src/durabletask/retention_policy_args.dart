// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy_properties.dart';

/// {@template pulumi_durabletask_retention_policy_args_doc}
/// The set of arguments for RetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_durabletask_retention_policy_args_doc}
class RetentionPolicyArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<RetentionPolicyProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Scheduler
  final pulumi.Input<String> schedulerName;

  /// Creates a new [RetentionPolicyArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schedulerName] The name of the Scheduler
  RetentionPolicyArgs({
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
      properties: map['properties'] == null ? null : (RetentionPolicyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schedulerName: (map['schedulerName'] as String).input(),
    );
  }
}

