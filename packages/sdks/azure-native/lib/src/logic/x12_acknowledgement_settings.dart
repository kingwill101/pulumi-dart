// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 agreement acknowledgement settings.
class X12AcknowledgementSettings {
  /// The acknowledgement control number lower bound.
  final pulumi.Input<int> acknowledgementControlNumberLowerBound;
  /// The acknowledgement control number prefix.
  final pulumi.Input<String?>? acknowledgementControlNumberPrefix;
  /// The acknowledgement control number suffix.
  final pulumi.Input<String?>? acknowledgementControlNumberSuffix;
  /// The acknowledgement control number upper bound.
  final pulumi.Input<int> acknowledgementControlNumberUpperBound;
  /// The value indicating whether to batch functional acknowledgements.
  final pulumi.Input<bool> batchFunctionalAcknowledgements;
  /// The value indicating whether to batch implementation acknowledgements.
  final pulumi.Input<bool> batchImplementationAcknowledgements;
  /// The value indicating whether to batch the technical acknowledgements.
  final pulumi.Input<bool> batchTechnicalAcknowledgements;
  /// The functional acknowledgement version.
  final pulumi.Input<String?>? functionalAcknowledgementVersion;
  /// The implementation acknowledgement version.
  final pulumi.Input<String?>? implementationAcknowledgementVersion;
  /// The value indicating whether functional acknowledgement is needed.
  final pulumi.Input<bool> needFunctionalAcknowledgement;
  /// The value indicating whether implementation acknowledgement is needed.
  final pulumi.Input<bool> needImplementationAcknowledgement;
  /// The value indicating whether a loop is needed for valid messages.
  final pulumi.Input<bool> needLoopForValidMessages;
  /// The value indicating whether technical acknowledgement is needed.
  final pulumi.Input<bool> needTechnicalAcknowledgement;
  /// The value indicating whether to rollover acknowledgement control number.
  final pulumi.Input<bool> rolloverAcknowledgementControlNumber;
  /// The value indicating whether to send synchronous acknowledgement.
  final pulumi.Input<bool> sendSynchronousAcknowledgement;

  /// Creates a new [X12AcknowledgementSettings].
  /// [acknowledgementControlNumberLowerBound] The acknowledgement control number lower bound.
  /// [acknowledgementControlNumberPrefix] The acknowledgement control number prefix.
  /// [acknowledgementControlNumberSuffix] The acknowledgement control number suffix.
  /// [acknowledgementControlNumberUpperBound] The acknowledgement control number upper bound.
  /// [batchFunctionalAcknowledgements] The value indicating whether to batch functional acknowledgements.
  /// [batchImplementationAcknowledgements] The value indicating whether to batch implementation acknowledgements.
  /// [batchTechnicalAcknowledgements] The value indicating whether to batch the technical acknowledgements.
  /// [functionalAcknowledgementVersion] The functional acknowledgement version.
  /// [implementationAcknowledgementVersion] The implementation acknowledgement version.
  /// [needFunctionalAcknowledgement] The value indicating whether functional acknowledgement is needed.
  /// [needImplementationAcknowledgement] The value indicating whether implementation acknowledgement is needed.
  /// [needLoopForValidMessages] The value indicating whether a loop is needed for valid messages.
  /// [needTechnicalAcknowledgement] The value indicating whether technical acknowledgement is needed.
  /// [rolloverAcknowledgementControlNumber] The value indicating whether to rollover acknowledgement control number.
  /// [sendSynchronousAcknowledgement] The value indicating whether to send synchronous acknowledgement.
  const X12AcknowledgementSettings({
    required this.acknowledgementControlNumberLowerBound,
    this.acknowledgementControlNumberPrefix,
    this.acknowledgementControlNumberSuffix,
    required this.acknowledgementControlNumberUpperBound,
    required this.batchFunctionalAcknowledgements,
    required this.batchImplementationAcknowledgements,
    required this.batchTechnicalAcknowledgements,
    this.functionalAcknowledgementVersion,
    this.implementationAcknowledgementVersion,
    required this.needFunctionalAcknowledgement,
    required this.needImplementationAcknowledgement,
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
      'batchImplementationAcknowledgements': batchImplementationAcknowledgements,
      'batchTechnicalAcknowledgements': batchTechnicalAcknowledgements,
      'functionalAcknowledgementVersion': ?functionalAcknowledgementVersion,
      'implementationAcknowledgementVersion': ?implementationAcknowledgementVersion,
      'needFunctionalAcknowledgement': needFunctionalAcknowledgement,
      'needImplementationAcknowledgement': needImplementationAcknowledgement,
      'needLoopForValidMessages': needLoopForValidMessages,
      'needTechnicalAcknowledgement': needTechnicalAcknowledgement,
      'rolloverAcknowledgementControlNumber': rolloverAcknowledgementControlNumber,
      'sendSynchronousAcknowledgement': sendSynchronousAcknowledgement,
    };
  }

  factory X12AcknowledgementSettings.fromMap(Map<String, dynamic> map) {
    return X12AcknowledgementSettings(
      acknowledgementControlNumberLowerBound: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['acknowledgementControlNumberLowerBound'])),
      acknowledgementControlNumberPrefix: (() { final guardedValue = map['acknowledgementControlNumberPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acknowledgementControlNumberSuffix: (() { final guardedValue = map['acknowledgementControlNumberSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acknowledgementControlNumberUpperBound: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['acknowledgementControlNumberUpperBound'])),
      batchFunctionalAcknowledgements: pulumi.Input.fromValue(map['batchFunctionalAcknowledgements'] as bool),
      batchImplementationAcknowledgements: pulumi.Input.fromValue(map['batchImplementationAcknowledgements'] as bool),
      batchTechnicalAcknowledgements: pulumi.Input.fromValue(map['batchTechnicalAcknowledgements'] as bool),
      functionalAcknowledgementVersion: (() { final guardedValue = map['functionalAcknowledgementVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      implementationAcknowledgementVersion: (() { final guardedValue = map['implementationAcknowledgementVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      needFunctionalAcknowledgement: pulumi.Input.fromValue(map['needFunctionalAcknowledgement'] as bool),
      needImplementationAcknowledgement: pulumi.Input.fromValue(map['needImplementationAcknowledgement'] as bool),
      needLoopForValidMessages: pulumi.Input.fromValue(map['needLoopForValidMessages'] as bool),
      needTechnicalAcknowledgement: pulumi.Input.fromValue(map['needTechnicalAcknowledgement'] as bool),
      rolloverAcknowledgementControlNumber: pulumi.Input.fromValue(map['rolloverAcknowledgementControlNumber'] as bool),
      sendSynchronousAcknowledgement: pulumi.Input.fromValue(map['sendSynchronousAcknowledgement'] as bool),
    );
  }
}
