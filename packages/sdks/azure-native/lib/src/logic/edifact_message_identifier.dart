// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact message identifier.
class EdifactMessageIdentifier {
  /// The message id on which this envelope settings has to be applied.
  final pulumi.Input<String> messageId;

  /// Creates a new [EdifactMessageIdentifier].
  /// [messageId] The message id on which this envelope settings has to be applied.
  EdifactMessageIdentifier({
    required this.messageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageId': messageId,
    };
  }

  factory EdifactMessageIdentifier.fromMap(Map<String, dynamic> map) {
    return EdifactMessageIdentifier(
      messageId: pulumi.Input.fromValue(map['messageId'] as String),
    );
  }
}

