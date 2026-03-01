// ignore_for_file: unused_element, unnecessary_cast


/// The Edifact message identifier.
class EdifactMessageIdentifierResponse {
  /// The message id on which this envelope settings has to be applied.
  final String messageId;

  /// Creates a new [EdifactMessageIdentifierResponse].
  /// [messageId] The message id on which this envelope settings has to be applied.
  EdifactMessageIdentifierResponse({
    required this.messageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageId': messageId,
    };
  }

  factory EdifactMessageIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return EdifactMessageIdentifierResponse(
      messageId: map['messageId'] as String,
    );
  }
}

