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
  BudgetResourceAssociationArgs({
    required String budgetName,
    String? region,
    required String resourceId,
  })  : budgetName = pulumi.Input.asInput<String>(budgetName),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['budgetName'] = budgetName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    return map;
  }

  factory BudgetResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return BudgetResourceAssociationArgs(
      budgetName: map['budgetName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}
