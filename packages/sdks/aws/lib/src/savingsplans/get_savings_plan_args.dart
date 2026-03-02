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
    required this.savingsPlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'savingsPlanId': savingsPlanId,
    };
  }

  factory GetSavingsPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetSavingsPlanArgs(
      savingsPlanId: (map['savingsPlanId'] as String).input(),
    );
  }
}

