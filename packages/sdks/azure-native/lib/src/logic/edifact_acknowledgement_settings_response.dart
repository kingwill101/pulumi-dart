// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact agreement acknowledgement settings.
class EdifactAcknowledgementSettingsResponse {
  /// The acknowledgement control number lower bound.
  final pulumi.Input<int> acknowledgementControlNumberLowerBound;
  /// The acknowledgement control number prefix.
  final pulumi.Input<String>? acknowledgementControlNumberPrefix;
  /// The acknowledgement control number suffix.
  final pulumi.Input<String>? acknowledgementControlNumberSuffix;
  /// The acknowledgement control number upper bound.
  final pulumi.Input<int> acknowledgementControlNumberUpperBound;
  /// The value indicating whether to batch functional acknowledgements.
  final pulumi.Input<bool> batchFunctionalAcknowledgements;
  /// The value indicating whether to batch the technical acknowledgements.
  final pulumi.Input<bool> batchTechnicalAcknowledgements;
  /// The value indicating whether functional acknowledgement is needed.
  final pulumi.Input<bool> needFunctionalAcknowledgement;
  /// The value indicating whether a loop is needed for valid messages.
  final pulumi.Input<bool> needLoopForValidMessages;
  /// The value indicating whether technical acknowledgement is needed.
  final pulumi.Input<bool> needTechnicalAcknowledgement;
  /// The value indicating whether to rollover acknowledgement control number.
  final pulumi.Input<bool> rolloverAcknowledgementControlNumber;
  /// The value indicating whether to send synchronous acknowledgement.
  final pulumi.Input<bool> sendSynchronousAcknowledgement;

  /// Creates a new [EdifactAcknowledgementSettingsResponse].
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
  EdifactAcknowledgementSettingsResponse({
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

  factory EdifactAcknowledgementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EdifactAcknowledgementSettingsResponse(
      acknowledgementControlNumberLowerBound: (map['acknowledgementControlNumberLowerBound'] as int).input(),
      acknowledgementControlNumberPrefix: map['acknowledgementControlNumberPrefix'] == null ? null : (map['acknowledgementControlNumberPrefix'] as String).input(),
      acknowledgementControlNumberSuffix: map['acknowledgementControlNumberSuffix'] == null ? null : (map['acknowledgementControlNumberSuffix'] as String).input(),
      acknowledgementControlNumberUpperBound: (map['acknowledgementControlNumberUpperBound'] as int).input(),
      batchFunctionalAcknowledgements: (map['batchFunctionalAcknowledgements'] as bool).input(),
      batchTechnicalAcknowledgements: (map['batchTechnicalAcknowledgements'] as bool).input(),
      needFunctionalAcknowledgement: (map['needFunctionalAcknowledgement'] as bool).input(),
      needLoopForValidMessages: (map['needLoopForValidMessages'] as bool).input(),
      needTechnicalAcknowledgement: (map['needTechnicalAcknowledgement'] as bool).input(),
      rolloverAcknowledgementControlNumber: (map['rolloverAcknowledgementControlNumber'] as bool).input(),
      sendSynchronousAcknowledgement: (map['sendSynchronousAcknowledgement'] as bool).input(),
    );
  }
}

