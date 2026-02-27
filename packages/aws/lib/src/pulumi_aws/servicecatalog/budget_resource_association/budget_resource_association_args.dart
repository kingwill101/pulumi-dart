// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BudgetResourceAssociation.
class BudgetResourceAssociationArgs {
  /// Budget name.
  final pulumi.Input<String> budgetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Resource identifier.
  final pulumi.Input<String> resourceId;

  BudgetResourceAssociationArgs({
    required this.budgetName,
    this.region,
    required this.resourceId,
  });

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
      budgetName: pulumi.Input.asInput<String>(map['budgetName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
    );
  }
}
