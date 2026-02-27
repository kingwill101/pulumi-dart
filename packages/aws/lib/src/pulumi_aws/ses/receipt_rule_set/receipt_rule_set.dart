import 'package:pulumi/pulumi.dart';
import 'receipt_rule_set_args.dart';

/// Provides an SES receipt rule set resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES receipt rule sets using the rule set name. For example:
///
/// ```sh
/// $ pulumi import aws:ses/receiptRuleSet:ReceiptRuleSet my_rule_set my_rule_set_name
/// ```
class ReceiptRuleSet extends CustomResource {
  /// SES receipt rule set ARN.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the rule set.
  late final Output<String> ruleSetName;

  ReceiptRuleSet(
    String name, {
    ReceiptRuleSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptRuleSet:ReceiptRuleSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.ruleSetName = registerOutput<String>('ruleSetName');
  }
}
