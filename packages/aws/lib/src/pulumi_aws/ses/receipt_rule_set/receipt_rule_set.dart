import 'package:pulumi/pulumi.dart' as pulumi;
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
class ReceiptRuleSet extends pulumi.CustomResource {
  /// SES receipt rule set ARN.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the rule set.
  late final pulumi.Output<String> ruleSetName;

  ReceiptRuleSet(
    String name, {
    ReceiptRuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptRuleSet:ReceiptRuleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.ruleSetName = registerOutput<String>('ruleSetName');
  }
}
