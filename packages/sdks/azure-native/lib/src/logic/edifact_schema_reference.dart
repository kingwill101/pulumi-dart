// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact schema reference.
class EdifactSchemaReference {
  /// The association assigned code.
  final pulumi.Input<String>? associationAssignedCode;
  /// The message id.
  final pulumi.Input<String> messageId;
  /// The message release version.
  final pulumi.Input<String> messageRelease;
  /// The message version.
  final pulumi.Input<String> messageVersion;
  /// The schema name.
  final pulumi.Input<String> schemaName;
  /// The sender application id.
  final pulumi.Input<String>? senderApplicationId;
  /// The sender application qualifier.
  final pulumi.Input<String>? senderApplicationQualifier;

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
      associationAssignedCode: map['associationAssignedCode'] == null ? null : (map['associationAssignedCode'] as String).input(),
      messageId: (map['messageId'] as String).input(),
      messageRelease: (map['messageRelease'] as String).input(),
      messageVersion: (map['messageVersion'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      senderApplicationId: map['senderApplicationId'] == null ? null : (map['senderApplicationId'] as String).input(),
      senderApplicationQualifier: map['senderApplicationQualifier'] == null ? null : (map['senderApplicationQualifier'] as String).input(),
    );
  }
}

