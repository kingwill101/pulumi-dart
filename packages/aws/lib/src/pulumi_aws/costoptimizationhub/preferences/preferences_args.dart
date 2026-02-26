// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Preferences.
class PreferencesArgs {
  /// Customize whether the member accounts can see the "After Discounts" savings estimates. Valid values are `All` and `None`. Default value is `All`.
  final Input<String>? memberAccountDiscountVisibility;

  /// Customize how estimated monthly savings are calculated. Valid values are `BeforeDiscounts` and `AfterDiscounts`. Default value is `BeforeDiscounts`.
  final Input<String>? savingsEstimationMode;

  PreferencesArgs({
    this.memberAccountDiscountVisibility,
    this.savingsEstimationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final memberAccountDiscountVisibilityValue =
        memberAccountDiscountVisibility;
    if (memberAccountDiscountVisibilityValue != null) {
      map['memberAccountDiscountVisibility'] =
          memberAccountDiscountVisibilityValue;
    }
    final savingsEstimationModeValue = savingsEstimationMode;
    if (savingsEstimationModeValue != null) {
      map['savingsEstimationMode'] = savingsEstimationModeValue;
    }
    return map;
  }

  factory PreferencesArgs.fromMap(Map<String, dynamic> map) {
    return PreferencesArgs(
      memberAccountDiscountVisibility:
          Input.asOptionalInput<String>(map['memberAccountDiscountVisibility']),
      savingsEstimationMode:
          Input.asOptionalInput<String>(map['savingsEstimationMode']),
    );
  }
}
