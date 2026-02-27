import 'package:pulumi/pulumi.dart';
import 'active_receipt_rule_set_args.dart';

/// Provides a resource to designate the active SES receipt rule set
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import active SES receipt rule sets using the rule set name. For example:
///
/// ```sh
/// $ pulumi import aws:ses/activeReceiptRuleSet:ActiveReceiptRuleSet my_rule_set my_rule_set_name
/// ```
class ActiveReceiptRuleSet extends CustomResource {
  /// The SES receipt rule set ARN.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the rule set
  late final Output<String> ruleSetName;

  ActiveReceiptRuleSet(
    String name, {
    ActiveReceiptRuleSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/activeReceiptRuleSet:ActiveReceiptRuleSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.ruleSetName = registerOutput<String>('ruleSetName');
  }
}
