// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact agreement envelope settings.
class EdifactEnvelopeSettingsResponse {
  /// The application reference id.
  final pulumi.Input<String>? applicationReferenceId;

  /// The value indicating whether to apply delimiter string advice.
  final pulumi.Input<bool> applyDelimiterStringAdvice;

  /// The communication agreement id.
  final pulumi.Input<String>? communicationAgreementId;

  /// The value indicating whether to create grouping segments.
  final pulumi.Input<bool> createGroupingSegments;

  /// The value indicating whether to enable default group headers.
  final pulumi.Input<bool> enableDefaultGroupHeaders;

  /// The functional group id.
  final pulumi.Input<String>? functionalGroupId;

  /// The group application password.
  final pulumi.Input<String>? groupApplicationPassword;

  /// The group application receiver id.
  final pulumi.Input<String>? groupApplicationReceiverId;

  /// The group application receiver qualifier.
  final pulumi.Input<String>? groupApplicationReceiverQualifier;

  /// The group application sender id.
  final pulumi.Input<String>? groupApplicationSenderId;

  /// The group application sender qualifier.
  final pulumi.Input<String>? groupApplicationSenderQualifier;

  /// The group association assigned code.
  final pulumi.Input<String>? groupAssociationAssignedCode;

  /// The group control number lower bound.
  final pulumi.Input<double> groupControlNumberLowerBound;

  /// The group control number prefix.
  final pulumi.Input<String>? groupControlNumberPrefix;

  /// The group control number suffix.
  final pulumi.Input<String>? groupControlNumberSuffix;

  /// The group control number upper bound.
  final pulumi.Input<double> groupControlNumberUpperBound;

  /// The group controlling agency code.
  final pulumi.Input<String>? groupControllingAgencyCode;

  /// The group message release.
  final pulumi.Input<String>? groupMessageRelease;

  /// The group message version.
  final pulumi.Input<String>? groupMessageVersion;

  /// The interchange control number lower bound.
  final pulumi.Input<double> interchangeControlNumberLowerBound;

  /// The interchange control number prefix.
  final pulumi.Input<String>? interchangeControlNumberPrefix;

  /// The interchange control number suffix.
  final pulumi.Input<String>? interchangeControlNumberSuffix;

  /// The interchange control number upper bound.
  final pulumi.Input<double> interchangeControlNumberUpperBound;

  /// The value indicating whether the message is a test interchange.
  final pulumi.Input<bool> isTestInterchange;

  /// The value indicating whether to overwrite existing transaction set control number.
  final pulumi.Input<bool> overwriteExistingTransactionSetControlNumber;

  /// The processing priority code.
  final pulumi.Input<String>? processingPriorityCode;

  /// The receiver internal identification.
  final pulumi.Input<String>? receiverInternalIdentification;

  /// The receiver internal sub identification.
  final pulumi.Input<String>? receiverInternalSubIdentification;

  /// The receiver reverse routing address.
  final pulumi.Input<String>? receiverReverseRoutingAddress;

  /// The recipient reference password qualifier.
  final pulumi.Input<String>? recipientReferencePasswordQualifier;

  /// The recipient reference password value.
  final pulumi.Input<String>? recipientReferencePasswordValue;

  /// The value indicating whether to rollover group control number.
  final pulumi.Input<bool> rolloverGroupControlNumber;

  /// The value indicating whether to rollover interchange control number.
  final pulumi.Input<bool> rolloverInterchangeControlNumber;

  /// The value indicating whether to rollover transaction set control number.
  final pulumi.Input<bool> rolloverTransactionSetControlNumber;

  /// The sender internal identification.
  final pulumi.Input<String>? senderInternalIdentification;

  /// The sender internal sub identification.
  final pulumi.Input<String>? senderInternalSubIdentification;

  /// The sender reverse routing address.
  final pulumi.Input<String>? senderReverseRoutingAddress;

  /// The transaction set control number lower bound.
  final pulumi.Input<double> transactionSetControlNumberLowerBound;

  /// The transaction set control number prefix.
  final pulumi.Input<String>? transactionSetControlNumberPrefix;

  /// The transaction set control number suffix.
  final pulumi.Input<String>? transactionSetControlNumberSuffix;

  /// The transaction set control number upper bound.
  final pulumi.Input<double> transactionSetControlNumberUpperBound;

  /// Creates a new [EdifactEnvelopeSettingsResponse].
  /// [applicationReferenceId] The application reference id.
  /// [applyDelimiterStringAdvice] The value indicating whether to apply delimiter string advice.
  /// [communicationAgreementId] The communication agreement id.
  /// [createGroupingSegments] The value indicating whether to create grouping segments.
  /// [enableDefaultGroupHeaders] The value indicating whether to enable default group headers.
  /// [functionalGroupId] The functional group id.
  /// [groupApplicationPassword] The group application password.
  /// [groupApplicationReceiverId] The group application receiver id.
  /// [groupApplicationReceiverQualifier] The group application receiver qualifier.
  /// [groupApplicationSenderId] The group application sender id.
  /// [groupApplicationSenderQualifier] The group application sender qualifier.
  /// [groupAssociationAssignedCode] The group association assigned code.
  /// [groupControlNumberLowerBound] The group control number lower bound.
  /// [groupControlNumberPrefix] The group control number prefix.
  /// [groupControlNumberSuffix] The group control number suffix.
  /// [groupControlNumberUpperBound] The group control number upper bound.
  /// [groupControllingAgencyCode] The group controlling agency code.
  /// [groupMessageRelease] The group message release.
  /// [groupMessageVersion] The group message version.
  /// [interchangeControlNumberLowerBound] The interchange control number lower bound.
  /// [interchangeControlNumberPrefix] The interchange control number prefix.
  /// [interchangeControlNumberSuffix] The interchange control number suffix.
  /// [interchangeControlNumberUpperBound] The interchange control number upper bound.
  /// [isTestInterchange] The value indicating whether the message is a test interchange.
  /// [overwriteExistingTransactionSetControlNumber] The value indicating whether to overwrite existing transaction set control number.
  /// [processingPriorityCode] The processing priority code.
  /// [receiverInternalIdentification] The receiver internal identification.
  /// [receiverInternalSubIdentification] The receiver internal sub identification.
  /// [receiverReverseRoutingAddress] The receiver reverse routing address.
  /// [recipientReferencePasswordQualifier] The recipient reference password qualifier.
  /// [recipientReferencePasswordValue] The recipient reference password value.
  /// [rolloverGroupControlNumber] The value indicating whether to rollover group control number.
  /// [rolloverInterchangeControlNumber] The value indicating whether to rollover interchange control number.
  /// [rolloverTransactionSetControlNumber] The value indicating whether to rollover transaction set control number.
  /// [senderInternalIdentification] The sender internal identification.
  /// [senderInternalSubIdentification] The sender internal sub identification.
  /// [senderReverseRoutingAddress] The sender reverse routing address.
  /// [transactionSetControlNumberLowerBound] The transaction set control number lower bound.
  /// [transactionSetControlNumberPrefix] The transaction set control number prefix.
  /// [transactionSetControlNumberSuffix] The transaction set control number suffix.
  /// [transactionSetControlNumberUpperBound] The transaction set control number upper bound.
  EdifactEnvelopeSettingsResponse({
    this.applicationReferenceId,
    required this.applyDelimiterStringAdvice,
    this.communicationAgreementId,
    required this.createGroupingSegments,
    required this.enableDefaultGroupHeaders,
    this.functionalGroupId,
    this.groupApplicationPassword,
    this.groupApplicationReceiverId,
    this.groupApplicationReceiverQualifier,
    this.groupApplicationSenderId,
    this.groupApplicationSenderQualifier,
    this.groupAssociationAssignedCode,
    required this.groupControlNumberLowerBound,
    this.groupControlNumberPrefix,
    this.groupControlNumberSuffix,
    required this.groupControlNumberUpperBound,
    this.groupControllingAgencyCode,
    this.groupMessageRelease,
    this.groupMessageVersion,
    required this.interchangeControlNumberLowerBound,
    this.interchangeControlNumberPrefix,
    this.interchangeControlNumberSuffix,
    required this.interchangeControlNumberUpperBound,
    required this.isTestInterchange,
    required this.overwriteExistingTransactionSetControlNumber,
    this.processingPriorityCode,
    this.receiverInternalIdentification,
    this.receiverInternalSubIdentification,
    this.receiverReverseRoutingAddress,
    this.recipientReferencePasswordQualifier,
    this.recipientReferencePasswordValue,
    required this.rolloverGroupControlNumber,
    required this.rolloverInterchangeControlNumber,
    required this.rolloverTransactionSetControlNumber,
    this.senderInternalIdentification,
    this.senderInternalSubIdentification,
    this.senderReverseRoutingAddress,
    required this.transactionSetControlNumberLowerBound,
    this.transactionSetControlNumberPrefix,
    this.transactionSetControlNumberSuffix,
    required this.transactionSetControlNumberUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationReferenceId': ?applicationReferenceId,
      'applyDelimiterStringAdvice': applyDelimiterStringAdvice,
      'communicationAgreementId': ?communicationAgreementId,
      'createGroupingSegments': createGroupingSegments,
      'enableDefaultGroupHeaders': enableDefaultGroupHeaders,
      'functionalGroupId': ?functionalGroupId,
      'groupApplicationPassword': ?groupApplicationPassword,
      'groupApplicationReceiverId': ?groupApplicationReceiverId,
      'groupApplicationReceiverQualifier': ?groupApplicationReceiverQualifier,
      'groupApplicationSenderId': ?groupApplicationSenderId,
      'groupApplicationSenderQualifier': ?groupApplicationSenderQualifier,
      'groupAssociationAssignedCode': ?groupAssociationAssignedCode,
      'groupControlNumberLowerBound': groupControlNumberLowerBound,
      'groupControlNumberPrefix': ?groupControlNumberPrefix,
      'groupControlNumberSuffix': ?groupControlNumberSuffix,
      'groupControlNumberUpperBound': groupControlNumberUpperBound,
      'groupControllingAgencyCode': ?groupControllingAgencyCode,
      'groupMessageRelease': ?groupMessageRelease,
      'groupMessageVersion': ?groupMessageVersion,
      'interchangeControlNumberLowerBound': interchangeControlNumberLowerBound,
      'interchangeControlNumberPrefix': ?interchangeControlNumberPrefix,
      'interchangeControlNumberSuffix': ?interchangeControlNumberSuffix,
      'interchangeControlNumberUpperBound': interchangeControlNumberUpperBound,
      'isTestInterchange': isTestInterchange,
      'overwriteExistingTransactionSetControlNumber':
          overwriteExistingTransactionSetControlNumber,
      'processingPriorityCode': ?processingPriorityCode,
      'receiverInternalIdentification': ?receiverInternalIdentification,
      'receiverInternalSubIdentification': ?receiverInternalSubIdentification,
      'receiverReverseRoutingAddress': ?receiverReverseRoutingAddress,
      'recipientReferencePasswordQualifier':
          ?recipientReferencePasswordQualifier,
      'recipientReferencePasswordValue': ?recipientReferencePasswordValue,
      'rolloverGroupControlNumber': rolloverGroupControlNumber,
      'rolloverInterchangeControlNumber': rolloverInterchangeControlNumber,
      'rolloverTransactionSetControlNumber':
          rolloverTransactionSetControlNumber,
      'senderInternalIdentification': ?senderInternalIdentification,
      'senderInternalSubIdentification': ?senderInternalSubIdentification,
      'senderReverseRoutingAddress': ?senderReverseRoutingAddress,
      'transactionSetControlNumberLowerBound':
          transactionSetControlNumberLowerBound,
      'transactionSetControlNumberPrefix': ?transactionSetControlNumberPrefix,
      'transactionSetControlNumberSuffix': ?transactionSetControlNumberSuffix,
      'transactionSetControlNumberUpperBound':
          transactionSetControlNumberUpperBound,
    };
  }

  factory EdifactEnvelopeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EdifactEnvelopeSettingsResponse(
      applicationReferenceId: (() {
        final guardedValue = map['applicationReferenceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      applyDelimiterStringAdvice: pulumi.Input.fromValue(
        map['applyDelimiterStringAdvice'] as bool,
      ),
      communicationAgreementId: (() {
        final guardedValue = map['communicationAgreementId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createGroupingSegments: pulumi.Input.fromValue(
        map['createGroupingSegments'] as bool,
      ),
      enableDefaultGroupHeaders: pulumi.Input.fromValue(
        map['enableDefaultGroupHeaders'] as bool,
      ),
      functionalGroupId: (() {
        final guardedValue = map['functionalGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupApplicationPassword: (() {
        final guardedValue = map['groupApplicationPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupApplicationReceiverId: (() {
        final guardedValue = map['groupApplicationReceiverId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupApplicationReceiverQualifier: (() {
        final guardedValue = map['groupApplicationReceiverQualifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupApplicationSenderId: (() {
        final guardedValue = map['groupApplicationSenderId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupApplicationSenderQualifier: (() {
        final guardedValue = map['groupApplicationSenderQualifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupAssociationAssignedCode: (() {
        final guardedValue = map['groupAssociationAssignedCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupControlNumberLowerBound: pulumi.Input.fromValue(
        map['groupControlNumberLowerBound'] as double,
      ),
      groupControlNumberPrefix: (() {
        final guardedValue = map['groupControlNumberPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupControlNumberSuffix: (() {
        final guardedValue = map['groupControlNumberSuffix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupControlNumberUpperBound: pulumi.Input.fromValue(
        map['groupControlNumberUpperBound'] as double,
      ),
      groupControllingAgencyCode: (() {
        final guardedValue = map['groupControllingAgencyCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupMessageRelease: (() {
        final guardedValue = map['groupMessageRelease'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupMessageVersion: (() {
        final guardedValue = map['groupMessageVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interchangeControlNumberLowerBound: pulumi.Input.fromValue(
        map['interchangeControlNumberLowerBound'] as double,
      ),
      interchangeControlNumberPrefix: (() {
        final guardedValue = map['interchangeControlNumberPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interchangeControlNumberSuffix: (() {
        final guardedValue = map['interchangeControlNumberSuffix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interchangeControlNumberUpperBound: pulumi.Input.fromValue(
        map['interchangeControlNumberUpperBound'] as double,
      ),
      isTestInterchange: pulumi.Input.fromValue(
        map['isTestInterchange'] as bool,
      ),
      overwriteExistingTransactionSetControlNumber: pulumi.Input.fromValue(
        map['overwriteExistingTransactionSetControlNumber'] as bool,
      ),
      processingPriorityCode: (() {
        final guardedValue = map['processingPriorityCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      receiverInternalIdentification: (() {
        final guardedValue = map['receiverInternalIdentification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      receiverInternalSubIdentification: (() {
        final guardedValue = map['receiverInternalSubIdentification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      receiverReverseRoutingAddress: (() {
        final guardedValue = map['receiverReverseRoutingAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recipientReferencePasswordQualifier: (() {
        final guardedValue = map['recipientReferencePasswordQualifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recipientReferencePasswordValue: (() {
        final guardedValue = map['recipientReferencePasswordValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rolloverGroupControlNumber: pulumi.Input.fromValue(
        map['rolloverGroupControlNumber'] as bool,
      ),
      rolloverInterchangeControlNumber: pulumi.Input.fromValue(
        map['rolloverInterchangeControlNumber'] as bool,
      ),
      rolloverTransactionSetControlNumber: pulumi.Input.fromValue(
        map['rolloverTransactionSetControlNumber'] as bool,
      ),
      senderInternalIdentification: (() {
        final guardedValue = map['senderInternalIdentification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      senderInternalSubIdentification: (() {
        final guardedValue = map['senderInternalSubIdentification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      senderReverseRoutingAddress: (() {
        final guardedValue = map['senderReverseRoutingAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transactionSetControlNumberLowerBound: pulumi.Input.fromValue(
        map['transactionSetControlNumberLowerBound'] as double,
      ),
      transactionSetControlNumberPrefix: (() {
        final guardedValue = map['transactionSetControlNumberPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transactionSetControlNumberSuffix: (() {
        final guardedValue = map['transactionSetControlNumberSuffix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transactionSetControlNumberUpperBound: pulumi.Input.fromValue(
        map['transactionSetControlNumberUpperBound'] as double,
      ),
    );
  }
}
