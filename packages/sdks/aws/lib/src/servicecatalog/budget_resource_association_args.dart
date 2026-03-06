// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_budget_resource_association_budget_resource_association_args_doc}
/// The set of arguments for BudgetResourceAssociation.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_budget_resource_association_budget_resource_association_args_doc}
class BudgetResourceAssociationArgs {
  /// Budget name.
  final pulumi.Input<String> budgetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource identifier.
  final pulumi.Input<String> resourceId;

  /// Creates a new [BudgetResourceAssociationArgs].
  /// [budgetName] Budget name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource identifier.
  const BudgetResourceAssociationArgs({
    required this.budgetName,
    this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'budgetName': budgetName,
      'region': ?region,
      'resourceId': resourceId,
    };
  }

  factory BudgetResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return BudgetResourceAssociationArgs(
      budgetName: pulumi.Input.fromValue(map['budgetName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

