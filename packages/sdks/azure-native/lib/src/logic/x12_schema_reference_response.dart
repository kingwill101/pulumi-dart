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
  final pulumi.Input<String>? senderApplicationId;

  /// Creates a new [X12SchemaReferenceResponse].
  /// [messageId] The message id.
  /// [schemaName] The schema name.
  /// [schemaVersion] The schema version.
  /// [senderApplicationId] The sender application id.
  X12SchemaReferenceResponse({
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
      messageId: (map['messageId'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      schemaVersion: (map['schemaVersion'] as String).input(),
      senderApplicationId: map['senderApplicationId'] == null ? null : (map['senderApplicationId']! as String).input(),
    );
  }
}

