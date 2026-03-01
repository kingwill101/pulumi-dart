// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'receipt_rule_add_header_action.dart';
import 'receipt_rule_bounce_action.dart';
import 'receipt_rule_lambda_action.dart';
import 'receipt_rule_s3_action.dart';
import 'receipt_rule_sns_action.dart';
import 'receipt_rule_stop_action.dart';
import 'receipt_rule_workmail_action.dart';

/// {@template pulumi_ses_receipt_rule_receipt_rule_args_doc}
/// The set of arguments for ReceiptRule.
/// {@endtemplate}
/// {@macro pulumi_ses_receipt_rule_receipt_rule_args_doc}
class ReceiptRuleArgs {
  /// A list of Add Header Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleAddHeaderAction>>? addHeaderActions;

  /// The name of the rule to place this rule after
  final pulumi.Input<String>? after;

  /// A list of Bounce Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleBounceAction>>? bounceActions;

  /// If true, the rule will be enabled
  final pulumi.Input<bool>? enabled;

  /// A list of Lambda Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleLambdaAction>>? lambdaActions;

  /// The name of the rule
  final pulumi.Input<String>? name;

  /// A list of email addresses
  final pulumi.Input<List<String>>? recipients;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the rule set
  final pulumi.Input<String> ruleSetName;

  /// A list of S3 Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleS3Action>>? s3Actions;

  /// If true, incoming emails will be scanned for spam and viruses
  final pulumi.Input<bool>? scanEnabled;

  /// A list of SNS Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleSnsAction>>? snsActions;

  /// A list of Stop Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleStopAction>>? stopActions;

  /// `Require` or `Optional`
  final pulumi.Input<String>? tlsPolicy;

  /// A list of WorkMail Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleWorkmailAction>>? workmailActions;

  /// Creates a new [ReceiptRuleArgs].
  /// [addHeaderActions] A list of Add Header Action blocks. Documented below.
  /// [after] The name of the rule to place this rule after
  /// [bounceActions] A list of Bounce Action blocks. Documented below.
  /// [enabled] If true, the rule will be enabled
  /// [lambdaActions] A list of Lambda Action blocks. Documented below.
  /// [name] The name of the rule
  /// [recipients] A list of email addresses
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleSetName] The name of the rule set
  /// [s3Actions] A list of S3 Action blocks. Documented below.
  /// [scanEnabled] If true, incoming emails will be scanned for spam and viruses
  /// [snsActions] A list of SNS Action blocks. Documented below.
  /// [stopActions] A list of Stop Action blocks. Documented below.
  /// [tlsPolicy] `Require` or `Optional`
  /// [workmailActions] A list of WorkMail Action blocks. Documented below.
  ReceiptRuleArgs({
    List<ReceiptRuleAddHeaderAction>? addHeaderActions,
    String? after,
    List<ReceiptRuleBounceAction>? bounceActions,
    bool? enabled,
    List<ReceiptRuleLambdaAction>? lambdaActions,
    String? name,
    List<String>? recipients,
    String? region,
    required String ruleSetName,
    List<ReceiptRuleS3Action>? s3Actions,
    bool? scanEnabled,
    List<ReceiptRuleSnsAction>? snsActions,
    List<ReceiptRuleStopAction>? stopActions,
    String? tlsPolicy,
    List<ReceiptRuleWorkmailAction>? workmailActions,
  }) : addHeaderActions =
           pulumi.Input.asOptionalInput<List<ReceiptRuleAddHeaderAction>>(
             addHeaderActions,
           ),
       after = pulumi.Input.asOptionalInput<String>(after),
       bounceActions = pulumi
           .Input.asOptionalInput<List<ReceiptRuleBounceAction>>(bounceActions),
       enabled = pulumi.Input.asOptionalInput<bool>(enabled),
       lambdaActions = pulumi
           .Input.asOptionalInput<List<ReceiptRuleLambdaAction>>(lambdaActions),
       name = pulumi.Input.asOptionalInput<String>(name),
       recipients = pulumi.Input.asOptionalInput<List<String>>(recipients),
       region = pulumi.Input.asOptionalInput<String>(region),
       ruleSetName = pulumi.Input.asInput<String>(ruleSetName),
       s3Actions = pulumi.Input.asOptionalInput<List<ReceiptRuleS3Action>>(
         s3Actions,
       ),
       scanEnabled = pulumi.Input.asOptionalInput<bool>(scanEnabled),
       snsActions = pulumi.Input.asOptionalInput<List<ReceiptRuleSnsAction>>(
         snsActions,
       ),
       stopActions = pulumi.Input.asOptionalInput<List<ReceiptRuleStopAction>>(
         stopActions,
       ),
       tlsPolicy = pulumi.Input.asOptionalInput<String>(tlsPolicy),
       workmailActions =
           pulumi.Input.asOptionalInput<List<ReceiptRuleWorkmailAction>>(
             workmailActions,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addHeaderActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReceiptRuleAddHeaderAction>,
            List<Map<String, dynamic>>
          >(
            addHeaderActions,
            (value) =>
                pulumi.Input.encodeList<
                  ReceiptRuleAddHeaderAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'after': ?after,
      'bounceActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReceiptRuleBounceAction>,
            List<Map<String, dynamic>>
          >(
            bounceActions,
            (value) =>
                pulumi.Input.encodeList<
                  ReceiptRuleBounceAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': ?enabled,
      'lambdaActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReceiptRuleLambdaAction>,
            List<Map<String, dynamic>>
          >(
            lambdaActions,
            (value) =>
                pulumi.Input.encodeList<
                  ReceiptRuleLambdaAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'recipients': ?recipients,
      'region': ?region,
      'ruleSetName': ruleSetName,
      's3Actions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReceiptRuleS3Action>,
            List<Map<String, dynamic>>
          >(
            s3Actions,
            (value) =>
                pulumi.Input.encodeList<
                  ReceiptRuleS3Action,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scanEnabled': ?scanEnabled,
      'snsActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReceiptRuleSnsAction>,
            List<Map<String, dynamic>>
          >(
            snsActions,
            (value) =>
                pulumi.Input.encodeList<
                  ReceiptRuleSnsAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stopActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReceiptRuleStopAction>,
            List<Map<String, dynamic>>
          >(
            stopActions,
            (value) =>
                pulumi.Input.encodeList<
                  ReceiptRuleStopAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tlsPolicy': ?tlsPolicy,
      'workmailActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReceiptRuleWorkmailAction>,
            List<Map<String, dynamic>>
          >(
            workmailActions,
            (value) =>
                pulumi.Input.encodeList<
                  ReceiptRuleWorkmailAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ReceiptRuleArgs.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleArgs(
      addHeaderActions: map['addHeaderActions'] == null
          ? null
          : pulumi.Input.decodeList<ReceiptRuleAddHeaderAction>(
              map['addHeaderActions'],
              (value) => ReceiptRuleAddHeaderAction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      after: map['after'] == null ? null : map['after'] as String,
      bounceActions: map['bounceActions'] == null
          ? null
          : pulumi.Input.decodeList<ReceiptRuleBounceAction>(
              map['bounceActions'],
              (value) => ReceiptRuleBounceAction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      lambdaActions: map['lambdaActions'] == null
          ? null
          : pulumi.Input.decodeList<ReceiptRuleLambdaAction>(
              map['lambdaActions'],
              (value) => ReceiptRuleLambdaAction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      recipients: map['recipients'] == null
          ? null
          : (map['recipients'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      ruleSetName: map['ruleSetName'] as String,
      s3Actions: map['s3Actions'] == null
          ? null
          : pulumi.Input.decodeList<ReceiptRuleS3Action>(
              map['s3Actions'],
              (value) => ReceiptRuleS3Action.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      scanEnabled: map['scanEnabled'] == null
          ? null
          : map['scanEnabled'] as bool,
      snsActions: map['snsActions'] == null
          ? null
          : pulumi.Input.decodeList<ReceiptRuleSnsAction>(
              map['snsActions'],
              (value) => ReceiptRuleSnsAction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      stopActions: map['stopActions'] == null
          ? null
          : pulumi.Input.decodeList<ReceiptRuleStopAction>(
              map['stopActions'],
              (value) => ReceiptRuleStopAction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tlsPolicy: map['tlsPolicy'] == null ? null : map['tlsPolicy'] as String,
      workmailActions: map['workmailActions'] == null
          ? null
          : pulumi.Input.decodeList<ReceiptRuleWorkmailAction>(
              map['workmailActions'],
              (value) => ReceiptRuleWorkmailAction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
