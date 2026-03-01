// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_extendedlocation_get_resource_sync_rule_args_doc}
/// Arguments for getResourceSyncRule.
/// {@endtemplate}
/// {@macro pulumi_extendedlocation_get_resource_sync_rule_args_doc}
class GetResourceSyncRuleArgs {
  /// Resource Sync Rule name.
  final pulumi.Input<String> childResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Custom Locations name.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetResourceSyncRuleArgs].
  /// [childResourceName] Resource Sync Rule name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Custom Locations name.
  GetResourceSyncRuleArgs({
    required String childResourceName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      childResourceName = pulumi.Input.asInput<String>(childResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': childResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetResourceSyncRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceSyncRuleArgs(
      childResourceName: map['childResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

