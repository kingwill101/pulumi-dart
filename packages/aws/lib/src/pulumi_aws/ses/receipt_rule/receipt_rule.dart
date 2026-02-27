import 'package:pulumi/pulumi.dart';
import '../receipt_rule_add_header_action/receipt_rule_add_header_action.dart';
import '../receipt_rule_bounce_action/receipt_rule_bounce_action.dart';
import '../receipt_rule_lambda_action/receipt_rule_lambda_action.dart';
import '../receipt_rule_s3_action/receipt_rule_s3_action.dart';
import '../receipt_rule_sns_action/receipt_rule_sns_action.dart';
import '../receipt_rule_stop_action/receipt_rule_stop_action.dart';
import '../receipt_rule_workmail_action/receipt_rule_workmail_action.dart';
import 'receipt_rule_args.dart';

/// Provides an SES receipt rule resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES receipt rules using the ruleset name and rule name separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/receiptRule:ReceiptRule my_rule my_rule_set:my_rule
/// ```
class ReceiptRule extends CustomResource {
  /// A list of Add Header Action blocks. Documented below.
  late final Output<List<ReceiptRuleAddHeaderAction>?> addHeaderActions;

  /// The name of the rule to place this rule after
  late final Output<String?> after;

  /// The SES receipt rule ARN.
  late final Output<String> arn;

  /// A list of Bounce Action blocks. Documented below.
  late final Output<List<ReceiptRuleBounceAction>?> bounceActions;

  /// If true, the rule will be enabled
  late final Output<bool?> enabled;

  /// A list of Lambda Action blocks. Documented below.
  late final Output<List<ReceiptRuleLambdaAction>?> lambdaActions;

  /// The name of the rule
  late final Output<String> name;

  /// A list of email addresses
  late final Output<List<String>?> recipients;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the rule set
  late final Output<String> ruleSetName;

  /// A list of S3 Action blocks. Documented below.
  late final Output<List<ReceiptRuleS3Action>?> s3Actions;

  /// If true, incoming emails will be scanned for spam and viruses
  late final Output<bool?> scanEnabled;

  /// A list of SNS Action blocks. Documented below.
  late final Output<List<ReceiptRuleSnsAction>?> snsActions;

  /// A list of Stop Action blocks. Documented below.
  late final Output<List<ReceiptRuleStopAction>?> stopActions;

  /// `Require` or `Optional`
  late final Output<String> tlsPolicy;

  /// A list of WorkMail Action blocks. Documented below.
  late final Output<List<ReceiptRuleWorkmailAction>?> workmailActions;

  ReceiptRule(
    String name, {
    ReceiptRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/receiptRule:ReceiptRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addHeaderActions =
        registerOutput<List<ReceiptRuleAddHeaderAction>?>('addHeaderActions');
    this.after = registerOutput<String?>('after');
    this.arn = registerOutput<String>('arn');
    this.bounceActions =
        registerOutput<List<ReceiptRuleBounceAction>?>('bounceActions');
    this.enabled = registerOutput<bool?>('enabled');
    this.lambdaActions =
        registerOutput<List<ReceiptRuleLambdaAction>?>('lambdaActions');
    this.name = registerOutput<String>('name');
    this.recipients = registerOutput<List<String>?>('recipients');
    this.region = registerOutput<String>('region');
    this.ruleSetName = registerOutput<String>('ruleSetName');
    this.s3Actions = registerOutput<List<ReceiptRuleS3Action>?>('s3Actions');
    this.scanEnabled = registerOutput<bool?>('scanEnabled');
    this.snsActions = registerOutput<List<ReceiptRuleSnsAction>?>('snsActions');
    this.stopActions =
        registerOutput<List<ReceiptRuleStopAction>?>('stopActions');
    this.tlsPolicy = registerOutput<String>('tlsPolicy');
    this.workmailActions =
        registerOutput<List<ReceiptRuleWorkmailAction>?>('workmailActions');
  }
}
