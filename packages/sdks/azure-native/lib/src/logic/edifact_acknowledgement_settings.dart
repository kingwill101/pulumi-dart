// ignore_for_file: unused_element, unnecessary_cast


/// The Edifact agreement acknowledgement settings.
class EdifactAcknowledgementSettings {
  /// The acknowledgement control number lower bound.
  final int acknowledgementControlNumberLowerBound;
  /// The acknowledgement control number prefix.
  final String? acknowledgementControlNumberPrefix;
  /// The acknowledgement control number suffix.
  final String? acknowledgementControlNumberSuffix;
  /// The acknowledgement control number upper bound.
  final int acknowledgementControlNumberUpperBound;
  /// The value indicating whether to batch functional acknowledgements.
  final bool batchFunctionalAcknowledgements;
  /// The value indicating whether to batch the technical acknowledgements.
  final bool batchTechnicalAcknowledgements;
  /// The value indicating whether functional acknowledgement is needed.
  final bool needFunctionalAcknowledgement;
  /// The value indicating whether a loop is needed for valid messages.
  final bool needLoopForValidMessages;
  /// The value indicating whether technical acknowledgement is needed.
  final bool needTechnicalAcknowledgement;
  /// The value indicating whether to rollover acknowledgement control number.
  final bool rolloverAcknowledgementControlNumber;
  /// The value indicating whether to send synchronous acknowledgement.
  final bool sendSynchronousAcknowledgement;

  /// Creates a new [EdifactAcknowledgementSettings].
  /// [acknowledgementControlNumberLowerBound] The acknowledgement control number lower bound.
  /// [acknowledgementControlNumberPrefix] The acknowledgement control number prefix.
  /// [acknowledgementControlNumberSuffix] The acknowledgement control number suffix.
  /// [acknowledgementControlNumberUpperBound] The acknowledgement control number upper bound.
  /// [batchFunctionalAcknowledgements] The value indicating whether to batch functional acknowledgements.
  /// [batchTechnicalAcknowledgements] The value indicating whether to batch the technical acknowledgements.
  /// [needFunctionalAcknowledgement] The value indicating whether functional acknowledgement is needed.
  /// [needLoopForValidMessages] The value indicating whether a loop is needed for valid messages.
  /// [needTechnicalAcknowledgement] The value indicating whether technical acknowledgement is needed.
  /// [rolloverAcknowledgementControlNumber] The value indicating whether to rollover acknowledgement control number.
  /// [sendSynchronousAcknowledgement] The value indicating whether to send synchronous acknowledgement.
  EdifactAcknowledgementSettings({
    required this.acknowledgementControlNumberLowerBound,
    this.acknowledgementControlNumberPrefix,
    this.acknowledgementControlNumberSuffix,
    required this.acknowledgementControlNumberUpperBound,
    required this.batchFunctionalAcknowledgements,
    required this.batchTechnicalAcknowledgements,
    required this.needFunctionalAcknowledgement,
    required this.needLoopForValidMessages,
    required this.needTechnicalAcknowledgement,
    required this.rolloverAcknowledgementControlNumber,
    required this.sendSynchronousAcknowledgement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgementControlNumberLowerBound': acknowledgementControlNumberLowerBound,
      'acknowledgementControlNumberPrefix': ?acknowledgementControlNumberPrefix,
      'acknowledgementControlNumberSuffix': ?acknowledgementControlNumberSuffix,
      'acknowledgementControlNumberUpperBound': acknowledgementControlNumberUpperBound,
      'batchFunctionalAcknowledgements': batchFunctionalAcknowledgements,
      'batchTechnicalAcknowledgements': batchTechnicalAcknowledgements,
      'needFunctionalAcknowledgement': needFunctionalAcknowledgement,
      'needLoopForValidMessages': needLoopForValidMessages,
      'needTechnicalAcknowledgement': needTechnicalAcknowledgement,
      'rolloverAcknowledgementControlNumber': rolloverAcknowledgementControlNumber,
      'sendSynchronousAcknowledgement': sendSynchronousAcknowledgement,
    };
  }

  factory EdifactAcknowledgementSettings.fromMap(Map<String, dynamic> map) {
    return EdifactAcknowledgementSettings(
      acknowledgementControlNumberLowerBound: map['acknowledgementControlNumberLowerBound'] as int,
      acknowledgementControlNumberPrefix: map['acknowledgementControlNumberPrefix'] == null ? null : map['acknowledgementControlNumberPrefix'] as String,
      acknowledgementControlNumberSuffix: map['acknowledgementControlNumberSuffix'] == null ? null : map['acknowledgementControlNumberSuffix'] as String,
      acknowledgementControlNumberUpperBound: map['acknowledgementControlNumberUpperBound'] as int,
      batchFunctionalAcknowledgements: map['batchFunctionalAcknowledgements'] as bool,
      batchTechnicalAcknowledgements: map['batchTechnicalAcknowledgements'] as bool,
      needFunctionalAcknowledgement: map['needFunctionalAcknowledgement'] as bool,
      needLoopForValidMessages: map['needLoopForValidMessages'] as bool,
      needTechnicalAcknowledgement: map['needTechnicalAcknowledgement'] as bool,
      rolloverAcknowledgementControlNumber: map['rolloverAcknowledgementControlNumber'] as bool,
      sendSynchronousAcknowledgement: map['sendSynchronousAcknowledgement'] as bool,
    );
  }
}

