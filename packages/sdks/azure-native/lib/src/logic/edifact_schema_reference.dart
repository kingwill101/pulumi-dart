// ignore_for_file: unused_element, unnecessary_cast


/// The Edifact schema reference.
class EdifactSchemaReference {
  /// The association assigned code.
  final String? associationAssignedCode;
  /// The message id.
  final String messageId;
  /// The message release version.
  final String messageRelease;
  /// The message version.
  final String messageVersion;
  /// The schema name.
  final String schemaName;
  /// The sender application id.
  final String? senderApplicationId;
  /// The sender application qualifier.
  final String? senderApplicationQualifier;

  /// Creates a new [EdifactSchemaReference].
  /// [associationAssignedCode] The association assigned code.
  /// [messageId] The message id.
  /// [messageRelease] The message release version.
  /// [messageVersion] The message version.
  /// [schemaName] The schema name.
  /// [senderApplicationId] The sender application id.
  /// [senderApplicationQualifier] The sender application qualifier.
  EdifactSchemaReference({
    this.associationAssignedCode,
    required this.messageId,
    required this.messageRelease,
    required this.messageVersion,
    required this.schemaName,
    this.senderApplicationId,
    this.senderApplicationQualifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationAssignedCode': ?associationAssignedCode,
      'messageId': messageId,
      'messageRelease': messageRelease,
      'messageVersion': messageVersion,
      'schemaName': schemaName,
      'senderApplicationId': ?senderApplicationId,
      'senderApplicationQualifier': ?senderApplicationQualifier,
    };
  }

  factory EdifactSchemaReference.fromMap(Map<String, dynamic> map) {
    return EdifactSchemaReference(
      associationAssignedCode: map['associationAssignedCode'] == null ? null : map['associationAssignedCode'] as String,
      messageId: map['messageId'] as String,
      messageRelease: map['messageRelease'] as String,
      messageVersion: map['messageVersion'] as String,
      schemaName: map['schemaName'] as String,
      senderApplicationId: map['senderApplicationId'] == null ? null : map['senderApplicationId'] as String,
      senderApplicationQualifier: map['senderApplicationQualifier'] == null ? null : map['senderApplicationQualifier'] as String,
    );
  }
}

