import 'package:pulumi/pulumi.dart';
import 'preferences_args.dart';

/// Resource for managing AWS Cost Optimization Hub Preferences.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with all the arguments
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cost Optimization Hub Preferences using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:costoptimizationhub/preferences:Preferences example 111222333444
/// ```
class Preferences extends CustomResource {
  /// Customize whether the member accounts can see the "After Discounts" savings estimates. Valid values are `All` and `None`. Default value is `All`.
  late final Output<String> memberAccountDiscountVisibility;

  /// Customize how estimated monthly savings are calculated. Valid values are `BeforeDiscounts` and `AfterDiscounts`. Default value is `BeforeDiscounts`.
  late final Output<String> savingsEstimationMode;

  Preferences(
    String name, {
    PreferencesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:costoptimizationhub/preferences:Preferences',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.memberAccountDiscountVisibility =
        registerOutput<String>('memberAccountDiscountVisibility');
    this.savingsEstimationMode =
        registerOutput<String>('savingsEstimationMode');
  }
}
