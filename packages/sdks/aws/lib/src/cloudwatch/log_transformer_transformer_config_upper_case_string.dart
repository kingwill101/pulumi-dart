// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigUpperCaseString {
  /// Specifies the keys of the fields to convert to uppercase.
  final pulumi.Input<List<String>> withKeys;

  /// Creates a new [LogTransformerTransformerConfigUpperCaseString].
  /// [withKeys] Specifies the keys of the fields to convert to uppercase.
  LogTransformerTransformerConfigUpperCaseString({
    required this.withKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withKeys': withKeys,
    };
  }

  factory LogTransformerTransformerConfigUpperCaseString.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigUpperCaseString(
      withKeys: ((map['withKeys'] as List).cast<String>()).input(),
    );
  }
}

