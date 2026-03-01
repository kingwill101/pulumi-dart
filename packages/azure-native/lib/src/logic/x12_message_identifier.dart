// ignore_for_file: unused_element, unnecessary_cast


/// The X12 message identifier.
class X12MessageIdentifier {
  /// The message id.
  final String messageId;

  /// Creates a new [X12MessageIdentifier].
  /// [messageId] The message id.
  X12MessageIdentifier({
    required this.messageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageId': messageId,
    };
  }

  factory X12MessageIdentifier.fromMap(Map<String, dynamic> map) {
    return X12MessageIdentifier(
      messageId: map['messageId'] as String,
    );
  }
}

