// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BudgetResourceAssociation resources.
class BudgetResourceAssociationState {
  /// Budget name.
  final pulumi.Input<String>? budgetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Resource identifier.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [BudgetResourceAssociationState].
  /// [budgetName] Budget name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource identifier.
  BudgetResourceAssociationState({
    this.budgetName,
    this.region,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'budgetName': ?budgetName,
      'region': ?region,
      'resourceId': ?resourceId,
    };
  }

  factory BudgetResourceAssociationState.fromMap(Map<String, dynamic> map) {
    return BudgetResourceAssociationState(
      budgetName: (() {
        final guardedValue = map['budgetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
