// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 envelope override settings.
class X12EnvelopeOverrideResponse {
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

  /// Creates a new [X12EnvelopeOverrideResponse].
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
  const X12EnvelopeOverrideResponse({
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

  factory X12EnvelopeOverrideResponse.fromMap(Map<String, dynamic> map) {
    return X12EnvelopeOverrideResponse(
      dateFormat: pulumi.Input.fromValue(map['dateFormat'] as String),
      functionalIdentifierCode: (() { final guardedValue = map['functionalIdentifierCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerVersion: pulumi.Input.fromValue(map['headerVersion'] as String),
      messageId: pulumi.Input.fromValue(map['messageId'] as String),
      protocolVersion: pulumi.Input.fromValue(map['protocolVersion'] as String),
      receiverApplicationId: pulumi.Input.fromValue(map['receiverApplicationId'] as String),
      responsibleAgencyCode: pulumi.Input.fromValue(map['responsibleAgencyCode'] as String),
      senderApplicationId: pulumi.Input.fromValue(map['senderApplicationId'] as String),
      targetNamespace: pulumi.Input.fromValue(map['targetNamespace'] as String),
      timeFormat: pulumi.Input.fromValue(map['timeFormat'] as String),
    );
  }
}

