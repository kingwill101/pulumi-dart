// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_consumption_get_budget_resource_group_get_budget_resource_group_args_doc}
/// Arguments for getBudgetResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_consumption_get_budget_resource_group_get_budget_resource_group_args_doc}
class GetBudgetResourceGroupArgs {
  /// The name of this Consumption Budget.
  final pulumi.Input<String> name;
  /// The ID of the subscription.
  final pulumi.Input<String> resourceGroupId;

  /// Creates a new [GetBudgetResourceGroupArgs].
  /// [name] The name of this Consumption Budget.
  /// [resourceGroupId] The ID of the subscription.
  GetBudgetResourceGroupArgs({
    required String name,
    required String resourceGroupId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupId = pulumi.Input.asInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupId': resourceGroupId,
    };
  }

  factory GetBudgetResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetResourceGroupArgs(
      name: map['name'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
    );
  }
}

