// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BudgetResourceAssociation.
class BudgetResourceAssociationArgs {
  /// Budget name.
  final Input<String> budgetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Resource identifier.
  final Input<String> resourceId;

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
      budgetName: Input.asInput<String>(map['budgetName']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
    );
  }
}
