// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Preferences resources.
class PreferencesState {
  /// Customize whether the member accounts can see the "After Discounts" savings estimates. Valid values are `All` and `None`. Default value is `All`.
  final pulumi.Input<String>? memberAccountDiscountVisibility;
  /// Customize how estimated monthly savings are calculated. Valid values are `BeforeDiscounts` and `AfterDiscounts`. Default value is `BeforeDiscounts`.
  final pulumi.Input<String>? savingsEstimationMode;

  /// Creates a new [PreferencesState].
  /// [memberAccountDiscountVisibility] Customize whether the member accounts can see the "After Discounts" savings estimates. Valid values are `All` and `None`. Default value is `All`.
  /// [savingsEstimationMode] Customize how estimated monthly savings are calculated. Valid values are `BeforeDiscounts` and `AfterDiscounts`. Default value is `BeforeDiscounts`.
  PreferencesState({
    pulumi.Output<String>? memberAccountDiscountVisibility,
    pulumi.Output<String>? savingsEstimationMode,
  }) :
      memberAccountDiscountVisibility = pulumi.Input.asOptionalInput<String>(memberAccountDiscountVisibility),
      savingsEstimationMode = pulumi.Input.asOptionalInput<String>(savingsEstimationMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberAccountDiscountVisibility': ?memberAccountDiscountVisibility,
      'savingsEstimationMode': ?savingsEstimationMode,
    };
  }

  factory PreferencesState.fromMap(Map<String, dynamic> map) {
    return PreferencesState(
      memberAccountDiscountVisibility: map['memberAccountDiscountVisibility'] == null ? null : pulumi.Output.create<String>(map['memberAccountDiscountVisibility'] as String),
      savingsEstimationMode: map['savingsEstimationMode'] == null ? null : pulumi.Output.create<String>(map['savingsEstimationMode'] as String),
    );
  }
}

