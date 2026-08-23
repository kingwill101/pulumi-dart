// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_action_add_header.dart';
import 'rule_set_rule_action_archive.dart';
import 'rule_set_rule_action_bounce.dart';
import 'rule_set_rule_action_deliver_to_mailbox.dart';
import 'rule_set_rule_action_deliver_to_qbusiness.dart';
import 'rule_set_rule_action_invoke_lambda.dart';
import 'rule_set_rule_action_publish_to_sns.dart';
import 'rule_set_rule_action_relay.dart';
import 'rule_set_rule_action_replace_recipient.dart';
import 'rule_set_rule_action_send.dart';
import 'rule_set_rule_action_write_to_s3.dart';

class RuleSetRuleAction {
  /// Adds a header to the email. See `addHeader` Block.
  final pulumi.Input<RuleSetRuleActionAddHeader>? addHeader;
  /// Archives the email. See `archive` Block.
  final pulumi.Input<RuleSetRuleActionArchive>? archive;
  /// Sends a bounce response. See `bounce` Block.
  final pulumi.Input<RuleSetRuleActionBounce>? bounce;
  /// Delivers the email to a WorkMail mailbox. See `deliverToMailbox` Block.
  final pulumi.Input<RuleSetRuleActionDeliverToMailbox>? deliverToMailbox;
  /// Delivers the email to an Amazon Q Business application. See `deliverToQBusiness` Block.
  final pulumi.Input<RuleSetRuleActionDeliverToQBusiness>? deliverToQBusiness;
  /// Stops rule evaluation and drops the email.
  final pulumi.Input<Map<String, dynamic>>? drop;
  /// Invokes a Lambda function. See `invokeLambda` Block.
  final pulumi.Input<RuleSetRuleActionInvokeLambda>? invokeLambda;
  /// Publishes the email to an SNS topic. See `publishToSns` Block.
  final pulumi.Input<RuleSetRuleActionPublishToSns>? publishToSns;
  /// Relays the email to an SMTP server. See `relay` Block.
  final pulumi.Input<RuleSetRuleActionRelay>? relay;
  /// Replaces envelope recipients. See `replaceRecipient` Block.
  final pulumi.Input<RuleSetRuleActionReplaceRecipient>? replaceRecipient;
  /// Sends the email to the internet. See `send` Block.
  final pulumi.Input<RuleSetRuleActionSend>? send;
  /// Writes the email MIME content to an S3 bucket. See `writeToS3` Block.
  final pulumi.Input<RuleSetRuleActionWriteToS3>? writeToS3;

  /// Creates a new [RuleSetRuleAction].
  /// [addHeader] Adds a header to the email. See `addHeader` Block.
  /// [archive] Archives the email. See `archive` Block.
  /// [bounce] Sends a bounce response. See `bounce` Block.
  /// [deliverToMailbox] Delivers the email to a WorkMail mailbox. See `deliverToMailbox` Block.
  /// [deliverToQBusiness] Delivers the email to an Amazon Q Business application. See `deliverToQBusiness` Block.
  /// [drop] Stops rule evaluation and drops the email.
  /// [invokeLambda] Invokes a Lambda function. See `invokeLambda` Block.
  /// [publishToSns] Publishes the email to an SNS topic. See `publishToSns` Block.
  /// [relay] Relays the email to an SMTP server. See `relay` Block.
  /// [replaceRecipient] Replaces envelope recipients. See `replaceRecipient` Block.
  /// [send] Sends the email to the internet. See `send` Block.
  /// [writeToS3] Writes the email MIME content to an S3 bucket. See `writeToS3` Block.
  const RuleSetRuleAction({
    this.addHeader,
    this.archive,
    this.bounce,
    this.deliverToMailbox,
    this.deliverToQBusiness,
    this.drop,
    this.invokeLambda,
    this.publishToSns,
    this.relay,
    this.replaceRecipient,
    this.send,
    this.writeToS3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addHeader': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionAddHeader, Map<String, dynamic>>(addHeader, (value) => value.toMap()),
      'archive': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionArchive, Map<String, dynamic>>(archive, (value) => value.toMap()),
      'bounce': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionBounce, Map<String, dynamic>>(bounce, (value) => value.toMap()),
      'deliverToMailbox': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionDeliverToMailbox, Map<String, dynamic>>(deliverToMailbox, (value) => value.toMap()),
      'deliverToQBusiness': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionDeliverToQBusiness, Map<String, dynamic>>(deliverToQBusiness, (value) => value.toMap()),
      'drop': ?drop,
      'invokeLambda': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionInvokeLambda, Map<String, dynamic>>(invokeLambda, (value) => value.toMap()),
      'publishToSns': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionPublishToSns, Map<String, dynamic>>(publishToSns, (value) => value.toMap()),
      'relay': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionRelay, Map<String, dynamic>>(relay, (value) => value.toMap()),
      'replaceRecipient': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionReplaceRecipient, Map<String, dynamic>>(replaceRecipient, (value) => value.toMap()),
      'send': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionSend, Map<String, dynamic>>(send, (value) => value.toMap()),
      'writeToS3': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleActionWriteToS3, Map<String, dynamic>>(writeToS3, (value) => value.toMap()),
    };
  }

  factory RuleSetRuleAction.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleAction(
      addHeader: (() { final guardedValue = map['addHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionAddHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      archive: (() { final guardedValue = map['archive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionArchive.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bounce: (() { final guardedValue = map['bounce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionBounce.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deliverToMailbox: (() { final guardedValue = map['deliverToMailbox']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionDeliverToMailbox.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deliverToQBusiness: (() { final guardedValue = map['deliverToQBusiness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionDeliverToQBusiness.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      drop: (() { final guardedValue = map['drop']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      invokeLambda: (() { final guardedValue = map['invokeLambda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionInvokeLambda.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publishToSns: (() { final guardedValue = map['publishToSns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionPublishToSns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      relay: (() { final guardedValue = map['relay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionRelay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replaceRecipient: (() { final guardedValue = map['replaceRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionReplaceRecipient.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionSend.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeToS3: (() { final guardedValue = map['writeToS3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleActionWriteToS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
