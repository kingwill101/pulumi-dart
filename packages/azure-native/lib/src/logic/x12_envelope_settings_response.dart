// ignore_for_file: unused_element, unnecessary_cast


/// The X12 agreement envelope settings.
class X12EnvelopeSettingsResponse {
  /// The controls standards id.
  final int controlStandardsId;
  /// The control version number.
  final String controlVersionNumber;
  /// The value indicating whether to enable default group headers.
  final bool enableDefaultGroupHeaders;
  /// The functional group id.
  final String? functionalGroupId;
  /// The group control number lower bound.
  final int groupControlNumberLowerBound;
  /// The group control number upper bound.
  final int groupControlNumberUpperBound;
  /// The group header agency code.
  final String groupHeaderAgencyCode;
  /// The group header date format.
  final String groupHeaderDateFormat;
  /// The group header time format.
  final String groupHeaderTimeFormat;
  /// The group header version.
  final String groupHeaderVersion;
  /// The interchange  control number lower bound.
  final int interchangeControlNumberLowerBound;
  /// The interchange  control number upper bound.
  final int interchangeControlNumberUpperBound;
  /// The value indicating whether to overwrite existing transaction set control number.
  final bool overwriteExistingTransactionSetControlNumber;
  /// The receiver application id.
  final String receiverApplicationId;
  /// The value indicating whether to rollover group control number.
  final bool rolloverGroupControlNumber;
  /// The value indicating whether to rollover interchange control number.
  final bool rolloverInterchangeControlNumber;
  /// The value indicating whether to rollover transaction set control number.
  final bool rolloverTransactionSetControlNumber;
  /// The sender application id.
  final String senderApplicationId;
  /// The transaction set control number lower bound.
  final int transactionSetControlNumberLowerBound;
  /// The transaction set control number prefix.
  final String? transactionSetControlNumberPrefix;
  /// The transaction set control number suffix.
  final String? transactionSetControlNumberSuffix;
  /// The transaction set control number upper bound.
  final int transactionSetControlNumberUpperBound;
  /// The usage indicator.
  final String usageIndicator;
  /// The value indicating whether to use control standards id as repetition character.
  final bool useControlStandardsIdAsRepetitionCharacter;

  /// Creates a new [X12EnvelopeSettingsResponse].
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
  X12EnvelopeSettingsResponse({
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

  factory X12EnvelopeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return X12EnvelopeSettingsResponse(
      controlStandardsId: map['controlStandardsId'] as int,
      controlVersionNumber: map['controlVersionNumber'] as String,
      enableDefaultGroupHeaders: map['enableDefaultGroupHeaders'] as bool,
      functionalGroupId: map['functionalGroupId'] == null ? null : map['functionalGroupId'] as String,
      groupControlNumberLowerBound: map['groupControlNumberLowerBound'] as int,
      groupControlNumberUpperBound: map['groupControlNumberUpperBound'] as int,
      groupHeaderAgencyCode: map['groupHeaderAgencyCode'] as String,
      groupHeaderDateFormat: map['groupHeaderDateFormat'] as String,
      groupHeaderTimeFormat: map['groupHeaderTimeFormat'] as String,
      groupHeaderVersion: map['groupHeaderVersion'] as String,
      interchangeControlNumberLowerBound: map['interchangeControlNumberLowerBound'] as int,
      interchangeControlNumberUpperBound: map['interchangeControlNumberUpperBound'] as int,
      overwriteExistingTransactionSetControlNumber: map['overwriteExistingTransactionSetControlNumber'] as bool,
      receiverApplicationId: map['receiverApplicationId'] as String,
      rolloverGroupControlNumber: map['rolloverGroupControlNumber'] as bool,
      rolloverInterchangeControlNumber: map['rolloverInterchangeControlNumber'] as bool,
      rolloverTransactionSetControlNumber: map['rolloverTransactionSetControlNumber'] as bool,
      senderApplicationId: map['senderApplicationId'] as String,
      transactionSetControlNumberLowerBound: map['transactionSetControlNumberLowerBound'] as int,
      transactionSetControlNumberPrefix: map['transactionSetControlNumberPrefix'] == null ? null : map['transactionSetControlNumberPrefix'] as String,
      transactionSetControlNumberSuffix: map['transactionSetControlNumberSuffix'] == null ? null : map['transactionSetControlNumberSuffix'] as String,
      transactionSetControlNumberUpperBound: map['transactionSetControlNumberUpperBound'] as int,
      usageIndicator: map['usageIndicator'] as String,
      useControlStandardsIdAsRepetitionCharacter: map['useControlStandardsIdAsRepetitionCharacter'] as bool,
    );
  }
}

