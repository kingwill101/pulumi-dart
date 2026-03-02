// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 agreement envelope settings.
class X12EnvelopeSettings {
  /// The controls standards id.
  final pulumi.Input<int> controlStandardsId;
  /// The control version number.
  final pulumi.Input<String> controlVersionNumber;
  /// The value indicating whether to enable default group headers.
  final pulumi.Input<bool> enableDefaultGroupHeaders;
  /// The functional group id.
  final pulumi.Input<String>? functionalGroupId;
  /// The group control number lower bound.
  final pulumi.Input<int> groupControlNumberLowerBound;
  /// The group control number upper bound.
  final pulumi.Input<int> groupControlNumberUpperBound;
  /// The group header agency code.
  final pulumi.Input<String> groupHeaderAgencyCode;
  /// The group header date format.
  final pulumi.Input<String> groupHeaderDateFormat;
  /// The group header time format.
  final pulumi.Input<String> groupHeaderTimeFormat;
  /// The group header version.
  final pulumi.Input<String> groupHeaderVersion;
  /// The interchange  control number lower bound.
  final pulumi.Input<int> interchangeControlNumberLowerBound;
  /// The interchange  control number upper bound.
  final pulumi.Input<int> interchangeControlNumberUpperBound;
  /// The value indicating whether to overwrite existing transaction set control number.
  final pulumi.Input<bool> overwriteExistingTransactionSetControlNumber;
  /// The receiver application id.
  final pulumi.Input<String> receiverApplicationId;
  /// The value indicating whether to rollover group control number.
  final pulumi.Input<bool> rolloverGroupControlNumber;
  /// The value indicating whether to rollover interchange control number.
  final pulumi.Input<bool> rolloverInterchangeControlNumber;
  /// The value indicating whether to rollover transaction set control number.
  final pulumi.Input<bool> rolloverTransactionSetControlNumber;
  /// The sender application id.
  final pulumi.Input<String> senderApplicationId;
  /// The transaction set control number lower bound.
  final pulumi.Input<int> transactionSetControlNumberLowerBound;
  /// The transaction set control number prefix.
  final pulumi.Input<String>? transactionSetControlNumberPrefix;
  /// The transaction set control number suffix.
  final pulumi.Input<String>? transactionSetControlNumberSuffix;
  /// The transaction set control number upper bound.
  final pulumi.Input<int> transactionSetControlNumberUpperBound;
  /// The usage indicator.
  final pulumi.Input<String> usageIndicator;
  /// The value indicating whether to use control standards id as repetition character.
  final pulumi.Input<bool> useControlStandardsIdAsRepetitionCharacter;

  /// Creates a new [X12EnvelopeSettings].
  /// [controlStandardsId] The controls standards id.
  /// [controlVersionNumber] The control version number.
  /// [enableDefaultGroupHeaders] The value indicating whether to enable default group headers.
  /// [functionalGroupId] The functional group id.
  /// [groupControlNumberLowerBound] The group control number lower bound.
  /// [groupControlNumberUpperBound] The group control number upper bound.
  /// [groupHeaderAgencyCode] The group header agency code.
  /// [groupHeaderDateFormat] The group header date format.
  /// [groupHeaderTimeFormat] The group header time format.
  /// [groupHeaderVersion] The group header version.
  /// [interchangeControlNumberLowerBound] The interchange  control number lower bound.
  /// [interchangeControlNumberUpperBound] The interchange  control number upper bound.
  /// [overwriteExistingTransactionSetControlNumber] The value indicating whether to overwrite existing transaction set control number.
  /// [receiverApplicationId] The receiver application id.
  /// [rolloverGroupControlNumber] The value indicating whether to rollover group control number.
  /// [rolloverInterchangeControlNumber] The value indicating whether to rollover interchange control number.
  /// [rolloverTransactionSetControlNumber] The value indicating whether to rollover transaction set control number.
  /// [senderApplicationId] The sender application id.
  /// [transactionSetControlNumberLowerBound] The transaction set control number lower bound.
  /// [transactionSetControlNumberPrefix] The transaction set control number prefix.
  /// [transactionSetControlNumberSuffix] The transaction set control number suffix.
  /// [transactionSetControlNumberUpperBound] The transaction set control number upper bound.
  /// [usageIndicator] The usage indicator.
  /// [useControlStandardsIdAsRepetitionCharacter] The value indicating whether to use control standards id as repetition character.
  X12EnvelopeSettings({
    required this.controlStandardsId,
    required this.controlVersionNumber,
    required this.enableDefaultGroupHeaders,
    this.functionalGroupId,
    required this.groupControlNumberLowerBound,
    required this.groupControlNumberUpperBound,
    required this.groupHeaderAgencyCode,
    required this.groupHeaderDateFormat,
    required this.groupHeaderTimeFormat,
    required this.groupHeaderVersion,
    required this.interchangeControlNumberLowerBound,
    required this.interchangeControlNumberUpperBound,
    required this.overwriteExistingTransactionSetControlNumber,
    required this.receiverApplicationId,
    required this.rolloverGroupControlNumber,
    required this.rolloverInterchangeControlNumber,
    required this.rolloverTransactionSetControlNumber,
    required this.senderApplicationId,
    required this.transactionSetControlNumberLowerBound,
    this.transactionSetControlNumberPrefix,
    this.transactionSetControlNumberSuffix,
    required this.transactionSetControlNumberUpperBound,
    required this.usageIndicator,
    required this.useControlStandardsIdAsRepetitionCharacter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlStandardsId': controlStandardsId,
      'controlVersionNumber': controlVersionNumber,
      'enableDefaultGroupHeaders': enableDefaultGroupHeaders,
      'functionalGroupId': ?functionalGroupId,
      'groupControlNumberLowerBound': groupControlNumberLowerBound,
      'groupControlNumberUpperBound': groupControlNumberUpperBound,
      'groupHeaderAgencyCode': groupHeaderAgencyCode,
      'groupHeaderDateFormat': groupHeaderDateFormat,
      'groupHeaderTimeFormat': groupHeaderTimeFormat,
      'groupHeaderVersion': groupHeaderVersion,
      'interchangeControlNumberLowerBound': interchangeControlNumberLowerBound,
      'interchangeControlNumberUpperBound': interchangeControlNumberUpperBound,
      'overwriteExistingTransactionSetControlNumber': overwriteExistingTransactionSetControlNumber,
      'receiverApplicationId': receiverApplicationId,
      'rolloverGroupControlNumber': rolloverGroupControlNumber,
      'rolloverInterchangeControlNumber': rolloverInterchangeControlNumber,
      'rolloverTransactionSetControlNumber': rolloverTransactionSetControlNumber,
      'senderApplicationId': senderApplicationId,
      'transactionSetControlNumberLowerBound': transactionSetControlNumberLowerBound,
      'transactionSetControlNumberPrefix': ?transactionSetControlNumberPrefix,
      'transactionSetControlNumberSuffix': ?transactionSetControlNumberSuffix,
      'transactionSetControlNumberUpperBound': transactionSetControlNumberUpperBound,
      'usageIndicator': usageIndicator,
      'useControlStandardsIdAsRepetitionCharacter': useControlStandardsIdAsRepetitionCharacter,
    };
  }

  factory X12EnvelopeSettings.fromMap(Map<String, dynamic> map) {
    return X12EnvelopeSettings(
      controlStandardsId: (map['controlStandardsId'] as int).input(),
      controlVersionNumber: (map['controlVersionNumber'] as String).input(),
      enableDefaultGroupHeaders: (map['enableDefaultGroupHeaders'] as bool).input(),
      functionalGroupId: map['functionalGroupId'] == null ? null : (map['functionalGroupId']! as String).input(),
      groupControlNumberLowerBound: (map['groupControlNumberLowerBound'] as int).input(),
      groupControlNumberUpperBound: (map['groupControlNumberUpperBound'] as int).input(),
      groupHeaderAgencyCode: (map['groupHeaderAgencyCode'] as String).input(),
      groupHeaderDateFormat: (map['groupHeaderDateFormat'] as String).input(),
      groupHeaderTimeFormat: (map['groupHeaderTimeFormat'] as String).input(),
      groupHeaderVersion: (map['groupHeaderVersion'] as String).input(),
      interchangeControlNumberLowerBound: (map['interchangeControlNumberLowerBound'] as int).input(),
      interchangeControlNumberUpperBound: (map['interchangeControlNumberUpperBound'] as int).input(),
      overwriteExistingTransactionSetControlNumber: (map['overwriteExistingTransactionSetControlNumber'] as bool).input(),
      receiverApplicationId: (map['receiverApplicationId'] as String).input(),
      rolloverGroupControlNumber: (map['rolloverGroupControlNumber'] as bool).input(),
      rolloverInterchangeControlNumber: (map['rolloverInterchangeControlNumber'] as bool).input(),
      rolloverTransactionSetControlNumber: (map['rolloverTransactionSetControlNumber'] as bool).input(),
      senderApplicationId: (map['senderApplicationId'] as String).input(),
      transactionSetControlNumberLowerBound: (map['transactionSetControlNumberLowerBound'] as int).input(),
      transactionSetControlNumberPrefix: map['transactionSetControlNumberPrefix'] == null ? null : (map['transactionSetControlNumberPrefix']! as String).input(),
      transactionSetControlNumberSuffix: map['transactionSetControlNumberSuffix'] == null ? null : (map['transactionSetControlNumberSuffix']! as String).input(),
      transactionSetControlNumberUpperBound: (map['transactionSetControlNumberUpperBound'] as int).input(),
      usageIndicator: (map['usageIndicator'] as String).input(),
      useControlStandardsIdAsRepetitionCharacter: (map['useControlStandardsIdAsRepetitionCharacter'] as bool).input(),
    );
  }
}

