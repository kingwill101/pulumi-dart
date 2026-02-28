// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_savingsplans_get_savings_plan_get_savings_plan_args_doc}
/// Arguments for getSavingsPlan.
/// {@endtemplate}
/// {@macro pulumi_savingsplans_get_savings_plan_get_savings_plan_args_doc}
class GetSavingsPlanArgs {
  /// The ID of the Savings Plan.
  final pulumi.Input<String> savingsPlanId;

  /// Creates a new [GetSavingsPlanArgs].
  /// [savingsPlanId] The ID of the Savings Plan.
  GetSavingsPlanArgs({
    required String savingsPlanId,
  }) : savingsPlanId = pulumi.Input.asInput<String>(savingsPlanId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['savingsPlanId'] = savingsPlanId;
    return map;
  }

  factory GetSavingsPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetSavingsPlanArgs(
      savingsPlanId: map['savingsPlanId'] as String,
    );
  }
}
