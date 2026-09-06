// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Delimited text read settings.
class DelimitedTextReadSettings {
  /// Compression settings.
  final pulumi.Input<dynamic>? compressionProperties;
  /// Indicates the number of non-empty rows to skip when reading data from input files. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? skipLineCount;
  /// The read setting type.
  /// Expected value is 'DelimitedTextReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [DelimitedTextReadSettings].
  /// [compressionProperties] Compression settings.
  /// [skipLineCount] Indicates the number of non-empty rows to skip when reading data from input files. Type: integer (or Expression with resultType integer).
  /// [type] The read setting type.
  const DelimitedTextReadSettings({
    this.compressionProperties,
    this.skipLineCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties,
      'skipLineCount': ?skipLineCount,
      'type': type,
    };
  }

  factory DelimitedTextReadSettings.fromMap(Map<String, dynamic> map) {
    return DelimitedTextReadSettings(
      compressionProperties: (() { final guardedValue = map['compressionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      skipLineCount: (() { final guardedValue = map['skipLineCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
