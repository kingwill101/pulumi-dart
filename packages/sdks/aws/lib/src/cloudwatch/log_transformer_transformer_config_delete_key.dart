// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigDeleteKey {
  /// Specifies the keys to be deleted.
  final pulumi.Input<List<String>> withKeys;

  /// Creates a new [LogTransformerTransformerConfigDeleteKey].
  /// [withKeys] Specifies the keys to be deleted.
  const LogTransformerTransformerConfigDeleteKey({
    required this.withKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withKeys': withKeys,
    };
  }

  factory LogTransformerTransformerConfigDeleteKey.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigDeleteKey(
      withKeys: pulumi.Input.fromValue((map['withKeys'] as List).cast<String>()),
    );
  }
}

