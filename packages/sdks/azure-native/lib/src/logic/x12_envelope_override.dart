// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 envelope override settings.
class X12EnvelopeOverride {
  /// The date format.
  final pulumi.Input<String> dateFormat;
  /// The functional identifier code.
  final pulumi.Input<String>? functionalIdentifierCode;
  /// The header version.
  final pulumi.Input<String> headerVersion;
  /// The message id on which this envelope settings has to be applied.
  final pulumi.Input<String> messageId;
  /// The protocol version on which this envelope settings has to be applied.
  final pulumi.Input<String> protocolVersion;
  /// The receiver application id.
  final pulumi.Input<String> receiverApplicationId;
  /// The responsible agency code.
  final pulumi.Input<String> responsibleAgencyCode;
  /// The sender application id.
  final pulumi.Input<String> senderApplicationId;
  /// The target namespace on which this envelope settings has to be applied.
  final pulumi.Input<String> targetNamespace;
  /// The time format.
  final pulumi.Input<String> timeFormat;

  /// Creates a new [X12EnvelopeOverride].
  /// [dateFormat] The date format.
  /// [functionalIdentifierCode] The functional identifier code.
  /// [headerVersion] The header version.
  /// [messageId] The message id on which this envelope settings has to be applied.
  /// [protocolVersion] The protocol version on which this envelope settings has to be applied.
  /// [receiverApplicationId] The receiver application id.
  /// [responsibleAgencyCode] The responsible agency code.
  /// [senderApplicationId] The sender application id.
  /// [targetNamespace] The target namespace on which this envelope settings has to be applied.
  /// [timeFormat] The time format.
  X12EnvelopeOverride({
    required this.dateFormat,
    this.functionalIdentifierCode,
    required this.headerVersion,
    required this.messageId,
    required this.protocolVersion,
    required this.receiverApplicationId,
    required this.responsibleAgencyCode,
    required this.senderApplicationId,
    required this.targetNamespace,
    required this.timeFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateFormat': dateFormat,
      'functionalIdentifierCode': ?functionalIdentifierCode,
      'headerVersion': headerVersion,
      'messageId': messageId,
      'protocolVersion': protocolVersion,
      'receiverApplicationId': receiverApplicationId,
      'responsibleAgencyCode': responsibleAgencyCode,
      'senderApplicationId': senderApplicationId,
      'targetNamespace': targetNamespace,
      'timeFormat': timeFormat,
    };
  }

  factory X12EnvelopeOverride.fromMap(Map<String, dynamic> map) {
    return X12EnvelopeOverride(
      dateFormat: (map['dateFormat'] as String).input(),
      functionalIdentifierCode: map['functionalIdentifierCode'] == null ? null : (map['functionalIdentifierCode']! as String).input(),
      headerVersion: (map['headerVersion'] as String).input(),
      messageId: (map['messageId'] as String).input(),
      protocolVersion: (map['protocolVersion'] as String).input(),
      receiverApplicationId: (map['receiverApplicationId'] as String).input(),
      responsibleAgencyCode: (map['responsibleAgencyCode'] as String).input(),
      senderApplicationId: (map['senderApplicationId'] as String).input(),
      targetNamespace: (map['targetNamespace'] as String).input(),
      timeFormat: (map['timeFormat'] as String).input(),
    );
  }
}

