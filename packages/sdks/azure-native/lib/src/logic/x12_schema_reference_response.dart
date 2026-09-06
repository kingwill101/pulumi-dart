// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 schema reference.
class X12SchemaReferenceResponse {
  /// The message id.
  final pulumi.Input<String> messageId;
  /// The schema name.
  final pulumi.Input<String> schemaName;
  /// The schema version.
  final pulumi.Input<String> schemaVersion;
  /// The sender application id.
  final pulumi.Input<String?>? senderApplicationId;

  /// Creates a new [X12SchemaReferenceResponse].
  /// [messageId] The message id.
  /// [schemaName] The schema name.
  /// [schemaVersion] The schema version.
  /// [senderApplicationId] The sender application id.
  const X12SchemaReferenceResponse({
    required this.messageId,
    required this.schemaName,
    required this.schemaVersion,
    this.senderApplicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageId': messageId,
      'schemaName': schemaName,
      'schemaVersion': schemaVersion,
      'senderApplicationId': ?senderApplicationId,
    };
  }

  factory X12SchemaReferenceResponse.fromMap(Map<String, dynamic> map) {
    return X12SchemaReferenceResponse(
      messageId: pulumi.Input.fromValue(map['messageId'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      schemaVersion: pulumi.Input.fromValue(map['schemaVersion'] as String),
      senderApplicationId: (() { final guardedValue = map['senderApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
