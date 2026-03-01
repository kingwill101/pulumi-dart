// ignore_for_file: unused_element, unnecessary_cast


/// The Edifact agreement envelope settings.
class EdifactEnvelopeSettings {
  /// The application reference id.
  final String? applicationReferenceId;
  /// The value indicating whether to apply delimiter string advice.
  final bool applyDelimiterStringAdvice;
  /// The communication agreement id.
  final String? communicationAgreementId;
  /// The value indicating whether to create grouping segments.
  final bool createGroupingSegments;
  /// The value indicating whether to enable default group headers.
  final bool enableDefaultGroupHeaders;
  /// The functional group id.
  final String? functionalGroupId;
  /// The group application password.
  final String? groupApplicationPassword;
  /// The group application receiver id.
  final String? groupApplicationReceiverId;
  /// The group application receiver qualifier.
  final String? groupApplicationReceiverQualifier;
  /// The group application sender id.
  final String? groupApplicationSenderId;
  /// The group application sender qualifier.
  final String? groupApplicationSenderQualifier;
  /// The group association assigned code.
  final String? groupAssociationAssignedCode;
  /// The group control number lower bound.
  final double groupControlNumberLowerBound;
  /// The group control number prefix.
  final String? groupControlNumberPrefix;
  /// The group control number suffix.
  final String? groupControlNumberSuffix;
  /// The group control number upper bound.
  final double groupControlNumberUpperBound;
  /// The group controlling agency code.
  final String? groupControllingAgencyCode;
  /// The group message release.
  final String? groupMessageRelease;
  /// The group message version.
  final String? groupMessageVersion;
  /// The interchange control number lower bound.
  final double interchangeControlNumberLowerBound;
  /// The interchange control number prefix.
  final String? interchangeControlNumberPrefix;
  /// The interchange control number suffix.
  final String? interchangeControlNumberSuffix;
  /// The interchange control number upper bound.
  final double interchangeControlNumberUpperBound;
  /// The value indicating whether the message is a test interchange.
  final bool isTestInterchange;
  /// The value indicating whether to overwrite existing transaction set control number.
  final bool overwriteExistingTransactionSetControlNumber;
  /// The processing priority code.
  final String? processingPriorityCode;
  /// The receiver internal identification.
  final String? receiverInternalIdentification;
  /// The receiver internal sub identification.
  final String? receiverInternalSubIdentification;
  /// The receiver reverse routing address.
  final String? receiverReverseRoutingAddress;
  /// The recipient reference password qualifier.
  final String? recipientReferencePasswordQualifier;
  /// The recipient reference password value.
  final String? recipientReferencePasswordValue;
  /// The value indicating whether to rollover group control number.
  final bool rolloverGroupControlNumber;
  /// The value indicating whether to rollover interchange control number.
  final bool rolloverInterchangeControlNumber;
  /// The value indicating whether to rollover transaction set control number.
  final bool rolloverTransactionSetControlNumber;
  /// The sender internal identification.
  final String? senderInternalIdentification;
  /// The sender internal sub identification.
  final String? senderInternalSubIdentification;
  /// The sender reverse routing address.
  final String? senderReverseRoutingAddress;
  /// The transaction set control number lower bound.
  final double transactionSetControlNumberLowerBound;
  /// The transaction set control number prefix.
  final String? transactionSetControlNumberPrefix;
  /// The transaction set control number suffix.
  final String? transactionSetControlNumberSuffix;
  /// The transaction set control number upper bound.
  final double transactionSetControlNumberUpperBound;

  /// Creates a new [EdifactEnvelopeSettings].
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
  EdifactEnvelopeSettings({
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
      'overwriteExistingTransactionSetControlNumber': overwriteExistingTransactionSetControlNumber,
      'processingPriorityCode': ?processingPriorityCode,
      'receiverInternalIdentification': ?receiverInternalIdentification,
      'receiverInternalSubIdentification': ?receiverInternalSubIdentification,
      'receiverReverseRoutingAddress': ?receiverReverseRoutingAddress,
      'recipientReferencePasswordQualifier': ?recipientReferencePasswordQualifier,
      'recipientReferencePasswordValue': ?recipientReferencePasswordValue,
      'rolloverGroupControlNumber': rolloverGroupControlNumber,
      'rolloverInterchangeControlNumber': rolloverInterchangeControlNumber,
      'rolloverTransactionSetControlNumber': rolloverTransactionSetControlNumber,
      'senderInternalIdentification': ?senderInternalIdentification,
      'senderInternalSubIdentification': ?senderInternalSubIdentification,
      'senderReverseRoutingAddress': ?senderReverseRoutingAddress,
      'transactionSetControlNumberLowerBound': transactionSetControlNumberLowerBound,
      'transactionSetControlNumberPrefix': ?transactionSetControlNumberPrefix,
      'transactionSetControlNumberSuffix': ?transactionSetControlNumberSuffix,
      'transactionSetControlNumberUpperBound': transactionSetControlNumberUpperBound,
    };
  }

  factory EdifactEnvelopeSettings.fromMap(Map<String, dynamic> map) {
    return EdifactEnvelopeSettings(
      applicationReferenceId: map['applicationReferenceId'] == null ? null : map['applicationReferenceId'] as String,
      applyDelimiterStringAdvice: map['applyDelimiterStringAdvice'] as bool,
      communicationAgreementId: map['communicationAgreementId'] == null ? null : map['communicationAgreementId'] as String,
      createGroupingSegments: map['createGroupingSegments'] as bool,
      enableDefaultGroupHeaders: map['enableDefaultGroupHeaders'] as bool,
      functionalGroupId: map['functionalGroupId'] == null ? null : map['functionalGroupId'] as String,
      groupApplicationPassword: map['groupApplicationPassword'] == null ? null : map['groupApplicationPassword'] as String,
      groupApplicationReceiverId: map['groupApplicationReceiverId'] == null ? null : map['groupApplicationReceiverId'] as String,
      groupApplicationReceiverQualifier: map['groupApplicationReceiverQualifier'] == null ? null : map['groupApplicationReceiverQualifier'] as String,
      groupApplicationSenderId: map['groupApplicationSenderId'] == null ? null : map['groupApplicationSenderId'] as String,
      groupApplicationSenderQualifier: map['groupApplicationSenderQualifier'] == null ? null : map['groupApplicationSenderQualifier'] as String,
      groupAssociationAssignedCode: map['groupAssociationAssignedCode'] == null ? null : map['groupAssociationAssignedCode'] as String,
      groupControlNumberLowerBound: map['groupControlNumberLowerBound'] as double,
      groupControlNumberPrefix: map['groupControlNumberPrefix'] == null ? null : map['groupControlNumberPrefix'] as String,
      groupControlNumberSuffix: map['groupControlNumberSuffix'] == null ? null : map['groupControlNumberSuffix'] as String,
      groupControlNumberUpperBound: map['groupControlNumberUpperBound'] as double,
      groupControllingAgencyCode: map['groupControllingAgencyCode'] == null ? null : map['groupControllingAgencyCode'] as String,
      groupMessageRelease: map['groupMessageRelease'] == null ? null : map['groupMessageRelease'] as String,
      groupMessageVersion: map['groupMessageVersion'] == null ? null : map['groupMessageVersion'] as String,
      interchangeControlNumberLowerBound: map['interchangeControlNumberLowerBound'] as double,
      interchangeControlNumberPrefix: map['interchangeControlNumberPrefix'] == null ? null : map['interchangeControlNumberPrefix'] as String,
      interchangeControlNumberSuffix: map['interchangeControlNumberSuffix'] == null ? null : map['interchangeControlNumberSuffix'] as String,
      interchangeControlNumberUpperBound: map['interchangeControlNumberUpperBound'] as double,
      isTestInterchange: map['isTestInterchange'] as bool,
      overwriteExistingTransactionSetControlNumber: map['overwriteExistingTransactionSetControlNumber'] as bool,
      processingPriorityCode: map['processingPriorityCode'] == null ? null : map['processingPriorityCode'] as String,
      receiverInternalIdentification: map['receiverInternalIdentification'] == null ? null : map['receiverInternalIdentification'] as String,
      receiverInternalSubIdentification: map['receiverInternalSubIdentification'] == null ? null : map['receiverInternalSubIdentification'] as String,
      receiverReverseRoutingAddress: map['receiverReverseRoutingAddress'] == null ? null : map['receiverReverseRoutingAddress'] as String,
      recipientReferencePasswordQualifier: map['recipientReferencePasswordQualifier'] == null ? null : map['recipientReferencePasswordQualifier'] as String,
      recipientReferencePasswordValue: map['recipientReferencePasswordValue'] == null ? null : map['recipientReferencePasswordValue'] as String,
      rolloverGroupControlNumber: map['rolloverGroupControlNumber'] as bool,
      rolloverInterchangeControlNumber: map['rolloverInterchangeControlNumber'] as bool,
      rolloverTransactionSetControlNumber: map['rolloverTransactionSetControlNumber'] as bool,
      senderInternalIdentification: map['senderInternalIdentification'] == null ? null : map['senderInternalIdentification'] as String,
      senderInternalSubIdentification: map['senderInternalSubIdentification'] == null ? null : map['senderInternalSubIdentification'] as String,
      senderReverseRoutingAddress: map['senderReverseRoutingAddress'] == null ? null : map['senderReverseRoutingAddress'] as String,
      transactionSetControlNumberLowerBound: map['transactionSetControlNumberLowerBound'] as double,
      transactionSetControlNumberPrefix: map['transactionSetControlNumberPrefix'] == null ? null : map['transactionSetControlNumberPrefix'] as String,
      transactionSetControlNumberSuffix: map['transactionSetControlNumberSuffix'] == null ? null : map['transactionSetControlNumberSuffix'] as String,
      transactionSetControlNumberUpperBound: map['transactionSetControlNumberUpperBound'] as double,
    );
  }
}

