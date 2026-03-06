// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigLowerCaseString {
  /// Specifies the keys of the fields to convert to lowercase.
  final pulumi.Input<List<String>> withKeys;

  /// Creates a new [LogTransformerTransformerConfigLowerCaseString].
  /// [withKeys] Specifies the keys of the fields to convert to lowercase.
  const LogTransformerTransformerConfigLowerCaseString({
    required this.withKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withKeys': withKeys,
    };
  }

  factory LogTransformerTransformerConfigLowerCaseString.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigLowerCaseString(
      withKeys: pulumi.Input.fromValue((map['withKeys'] as List).cast<String>()),
    );
  }
}

