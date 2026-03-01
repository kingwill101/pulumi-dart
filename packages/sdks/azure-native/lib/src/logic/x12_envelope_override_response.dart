// ignore_for_file: unused_element, unnecessary_cast


/// The X12 envelope override settings.
class X12EnvelopeOverrideResponse {
  /// The date format.
  final String dateFormat;
  /// The functional identifier code.
  final String? functionalIdentifierCode;
  /// The header version.
  final String headerVersion;
  /// The message id on which this envelope settings has to be applied.
  final String messageId;
  /// The protocol version on which this envelope settings has to be applied.
  final String protocolVersion;
  /// The receiver application id.
  final String receiverApplicationId;
  /// The responsible agency code.
  final String responsibleAgencyCode;
  /// The sender application id.
  final String senderApplicationId;
  /// The target namespace on which this envelope settings has to be applied.
  final String targetNamespace;
  /// The time format.
  final String timeFormat;

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
  X12EnvelopeOverrideResponse({
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
      dateFormat: map['dateFormat'] as String,
      functionalIdentifierCode: map['functionalIdentifierCode'] == null ? null : map['functionalIdentifierCode'] as String,
      headerVersion: map['headerVersion'] as String,
      messageId: map['messageId'] as String,
      protocolVersion: map['protocolVersion'] as String,
      receiverApplicationId: map['receiverApplicationId'] as String,
      responsibleAgencyCode: map['responsibleAgencyCode'] as String,
      senderApplicationId: map['senderApplicationId'] as String,
      targetNamespace: map['targetNamespace'] as String,
      timeFormat: map['timeFormat'] as String,
    );
  }
}

