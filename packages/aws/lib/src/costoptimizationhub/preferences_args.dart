// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costoptimizationhub_preferences_preferences_args_doc}
/// The set of arguments for Preferences.
/// {@endtemplate}
/// {@macro pulumi_costoptimizationhub_preferences_preferences_args_doc}
class PreferencesArgs {
  /// Customize whether the member accounts can see the "After Discounts" savings estimates. Valid values are `All` and `None`. Default value is `All`.
  final pulumi.Input<String>? memberAccountDiscountVisibility;
  /// Customize how estimated monthly savings are calculated. Valid values are `BeforeDiscounts` and `AfterDiscounts`. Default value is `BeforeDiscounts`.
  final pulumi.Input<String>? savingsEstimationMode;

  /// Creates a new [PreferencesArgs].
  /// [memberAccountDiscountVisibility] Customize whether the member accounts can see the "After Discounts" savings estimates. Valid values are `All` and `None`. Default value is `All`.
  /// [savingsEstimationMode] Customize how estimated monthly savings are calculated. Valid values are `BeforeDiscounts` and `AfterDiscounts`. Default value is `BeforeDiscounts`.
  PreferencesArgs({
    String? memberAccountDiscountVisibility,
    String? savingsEstimationMode,
  }) :
      memberAccountDiscountVisibility = pulumi.Input.asOptionalInput<String>(memberAccountDiscountVisibility),
      savingsEstimationMode = pulumi.Input.asOptionalInput<String>(savingsEstimationMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberAccountDiscountVisibility': ?memberAccountDiscountVisibility,
      'savingsEstimationMode': ?savingsEstimationMode,
    };
  }

  factory PreferencesArgs.fromMap(Map<String, dynamic> map) {
    return PreferencesArgs(
      memberAccountDiscountVisibility: map['memberAccountDiscountVisibility'] == null ? null : map['memberAccountDiscountVisibility'] as String,
      savingsEstimationMode: map['savingsEstimationMode'] == null ? null : map['savingsEstimationMode'] as String,
    );
  }
}

