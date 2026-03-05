// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigTrimString {
  /// Specifies the keys of the fields to trim.
  final pulumi.Input<List<String>> withKeys;

  /// Creates a new [LogTransformerTransformerConfigTrimString].
  /// [withKeys] Specifies the keys of the fields to trim.
  LogTransformerTransformerConfigTrimString({
    required this.withKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withKeys': withKeys,
    };
  }

  factory LogTransformerTransformerConfigTrimString.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigTrimString(
      withKeys: pulumi.Input.fromValue((map['withKeys'] as List).cast<String>()),
    );
  }
}

