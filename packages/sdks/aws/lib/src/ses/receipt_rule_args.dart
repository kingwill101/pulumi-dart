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
    this.addHeaderActions,
    this.after,
    this.bounceActions,
    this.enabled,
    this.lambdaActions,
    this.name,
    this.recipients,
    this.region,
    required this.ruleSetName,
    this.s3Actions,
    this.scanEnabled,
    this.snsActions,
    this.stopActions,
    this.tlsPolicy,
    this.workmailActions,
  });

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
      addHeaderActions: (() {
        final guardedValue = map['addHeaderActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReceiptRuleAddHeaderAction>(
            guardedValue,
            (value) => ReceiptRuleAddHeaderAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      after: (() {
        final guardedValue = map['after'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bounceActions: (() {
        final guardedValue = map['bounceActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReceiptRuleBounceAction>(
            guardedValue,
            (value) => ReceiptRuleBounceAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lambdaActions: (() {
        final guardedValue = map['lambdaActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReceiptRuleLambdaAction>(
            guardedValue,
            (value) => ReceiptRuleLambdaAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recipients: (() {
        final guardedValue = map['recipients'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleSetName: pulumi.Input.fromValue(map['ruleSetName'] as String),
      s3Actions: (() {
        final guardedValue = map['s3Actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReceiptRuleS3Action>(
            guardedValue,
            (value) => ReceiptRuleS3Action.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      scanEnabled: (() {
        final guardedValue = map['scanEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      snsActions: (() {
        final guardedValue = map['snsActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReceiptRuleSnsAction>(
            guardedValue,
            (value) => ReceiptRuleSnsAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      stopActions: (() {
        final guardedValue = map['stopActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReceiptRuleStopAction>(
            guardedValue,
            (value) => ReceiptRuleStopAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tlsPolicy: (() {
        final guardedValue = map['tlsPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workmailActions: (() {
        final guardedValue = map['workmailActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReceiptRuleWorkmailAction>(
            guardedValue,
            (value) => ReceiptRuleWorkmailAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
