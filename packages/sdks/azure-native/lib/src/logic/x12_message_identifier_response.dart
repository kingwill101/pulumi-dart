// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 message identifier.
class X12MessageIdentifierResponse {
  /// The message id.
  final pulumi.Input<String> messageId;

  /// Creates a new [X12MessageIdentifierResponse].
  /// [messageId] The message id.
  X12MessageIdentifierResponse({
    required this.messageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageId': messageId,
    };
  }

  factory X12MessageIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return X12MessageIdentifierResponse(
      messageId: pulumi.Input.fromValue(map['messageId'] as String),
    );
  }
}

