// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'receipt_rule_add_header_action.dart';
import 'receipt_rule_bounce_action.dart';
import 'receipt_rule_lambda_action.dart';
import 'receipt_rule_s3_action.dart';
import 'receipt_rule_sns_action.dart';
import 'receipt_rule_stop_action.dart';
import 'receipt_rule_workmail_action.dart';

/// Input properties used for looking up and filtering ReceiptRule resources.
class ReceiptRuleState {
  /// Configuration block for adding a header to received emails. Detailed below.
  final pulumi.Input<List<ReceiptRuleAddHeaderAction>?>? addHeaderActions;
  /// Name of the rule to place this rule after.
  final pulumi.Input<String?>? after;
  /// SES receipt rule ARN.
  final pulumi.Input<String?>? arn;
  /// Configuration block for rejecting received emails. Detailed below.
  final pulumi.Input<List<ReceiptRuleBounceAction>?>? bounceActions;
  /// If true, the rule will be enabled.
  final pulumi.Input<bool?>? enabled;
  /// Configuration block for calling an AWS Lambda function. Detailed below.
  final pulumi.Input<List<ReceiptRuleLambdaAction>?>? lambdaActions;
  /// Name of the rule.
  final pulumi.Input<String?>? name;
  /// List of email addresses.
  final pulumi.Input<List<String>?>? recipients;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name of the rule set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? ruleSetName;
  /// Configuration block for storing received emails in an S3 bucket. Detailed below.
  final pulumi.Input<List<ReceiptRuleS3Action>?>? s3Actions;
  /// If true, incoming emails will be scanned for spam and viruses.
  final pulumi.Input<bool?>? scanEnabled;
  /// Configuration block for publishing to an SNS topic. Detailed below.
  final pulumi.Input<List<ReceiptRuleSnsAction>?>? snsActions;
  /// Configuration block for terminating the evaluation of the receipt rule set. Detailed below.
  final pulumi.Input<List<ReceiptRuleStopAction>?>? stopActions;
  /// `Require` or `Optional`.
  final pulumi.Input<String?>? tlsPolicy;
  /// Configuration block for calling Amazon WorkMail. Detailed below.
  final pulumi.Input<List<ReceiptRuleWorkmailAction>?>? workmailActions;

  /// Creates a new [ReceiptRuleState].
  /// [addHeaderActions] Configuration block for adding a header to received emails. Detailed below.
  /// [after] Name of the rule to place this rule after.
  /// [arn] SES receipt rule ARN.
  /// [bounceActions] Configuration block for rejecting received emails. Detailed below.
  /// [enabled] If true, the rule will be enabled.
  /// [lambdaActions] Configuration block for calling an AWS Lambda function. Detailed below.
  /// [name] Name of the rule.
  /// [recipients] List of email addresses.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleSetName] Name of the rule set.
  /// [s3Actions] Configuration block for storing received emails in an S3 bucket. Detailed below.
  /// [scanEnabled] If true, incoming emails will be scanned for spam and viruses.
  /// [snsActions] Configuration block for publishing to an SNS topic. Detailed below.
  /// [stopActions] Configuration block for terminating the evaluation of the receipt rule set. Detailed below.
  /// [tlsPolicy] `Require` or `Optional`.
  /// [workmailActions] Configuration block for calling Amazon WorkMail. Detailed below.
  const ReceiptRuleState({
    this.addHeaderActions,
    this.after,
    this.arn,
    this.bounceActions,
    this.enabled,
    this.lambdaActions,
    this.name,
    this.recipients,
    this.region,
    this.ruleSetName,
    this.s3Actions,
    this.scanEnabled,
    this.snsActions,
    this.stopActions,
    this.tlsPolicy,
    this.workmailActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addHeaderActions': ?pulumi.Input.mapOptionalInputValue<List<ReceiptRuleAddHeaderAction>, List<Map<String, dynamic>>>(addHeaderActions, (value) => pulumi.Input.encodeList<ReceiptRuleAddHeaderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'after': ?after,
      'arn': ?arn,
      'bounceActions': ?pulumi.Input.mapOptionalInputValue<List<ReceiptRuleBounceAction>, List<Map<String, dynamic>>>(bounceActions, (value) => pulumi.Input.encodeList<ReceiptRuleBounceAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'lambdaActions': ?pulumi.Input.mapOptionalInputValue<List<ReceiptRuleLambdaAction>, List<Map<String, dynamic>>>(lambdaActions, (value) => pulumi.Input.encodeList<ReceiptRuleLambdaAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'recipients': ?recipients,
      'region': ?region,
      'ruleSetName': ?ruleSetName,
      's3Actions': ?pulumi.Input.mapOptionalInputValue<List<ReceiptRuleS3Action>, List<Map<String, dynamic>>>(s3Actions, (value) => pulumi.Input.encodeList<ReceiptRuleS3Action, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scanEnabled': ?scanEnabled,
      'snsActions': ?pulumi.Input.mapOptionalInputValue<List<ReceiptRuleSnsAction>, List<Map<String, dynamic>>>(snsActions, (value) => pulumi.Input.encodeList<ReceiptRuleSnsAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stopActions': ?pulumi.Input.mapOptionalInputValue<List<ReceiptRuleStopAction>, List<Map<String, dynamic>>>(stopActions, (value) => pulumi.Input.encodeList<ReceiptRuleStopAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tlsPolicy': ?tlsPolicy,
      'workmailActions': ?pulumi.Input.mapOptionalInputValue<List<ReceiptRuleWorkmailAction>, List<Map<String, dynamic>>>(workmailActions, (value) => pulumi.Input.encodeList<ReceiptRuleWorkmailAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReceiptRuleState.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleState(
      addHeaderActions: (() { final guardedValue = map['addHeaderActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReceiptRuleAddHeaderAction>(guardedValue, (value) => ReceiptRuleAddHeaderAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      after: (() { final guardedValue = map['after']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bounceActions: (() { final guardedValue = map['bounceActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReceiptRuleBounceAction>(guardedValue, (value) => ReceiptRuleBounceAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lambdaActions: (() { final guardedValue = map['lambdaActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReceiptRuleLambdaAction>(guardedValue, (value) => ReceiptRuleLambdaAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipients: (() { final guardedValue = map['recipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSetName: (() { final guardedValue = map['ruleSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Actions: (() { final guardedValue = map['s3Actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReceiptRuleS3Action>(guardedValue, (value) => ReceiptRuleS3Action.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scanEnabled: (() { final guardedValue = map['scanEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snsActions: (() { final guardedValue = map['snsActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReceiptRuleSnsAction>(guardedValue, (value) => ReceiptRuleSnsAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stopActions: (() { final guardedValue = map['stopActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReceiptRuleStopAction>(guardedValue, (value) => ReceiptRuleStopAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tlsPolicy: (() { final guardedValue = map['tlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workmailActions: (() { final guardedValue = map['workmailActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReceiptRuleWorkmailAction>(guardedValue, (value) => ReceiptRuleWorkmailAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
