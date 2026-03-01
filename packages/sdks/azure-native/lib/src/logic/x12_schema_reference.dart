// ignore_for_file: unused_element, unnecessary_cast


/// The X12 schema reference.
class X12SchemaReference {
  /// The message id.
  final String messageId;
  /// The schema name.
  final String schemaName;
  /// The schema version.
  final String schemaVersion;
  /// The sender application id.
  final String? senderApplicationId;

  /// Creates a new [X12SchemaReference].
  /// [messageId] The message id.
  /// [schemaName] The schema name.
  /// [schemaVersion] The schema version.
  /// [senderApplicationId] The sender application id.
  X12SchemaReference({
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

  factory X12SchemaReference.fromMap(Map<String, dynamic> map) {
    return X12SchemaReference(
      messageId: map['messageId'] as String,
      schemaName: map['schemaName'] as String,
      schemaVersion: map['schemaVersion'] as String,
      senderApplicationId: map['senderApplicationId'] == null ? null : map['senderApplicationId'] as String,
    );
  }
}

