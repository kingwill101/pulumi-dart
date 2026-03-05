// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The TarGZip compression read settings.
class TarGZipReadSettings {
  /// Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? preserveCompressionFileNameAsFolder;
  /// The Compression setting type.
  /// Expected value is 'TarGZipReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [TarGZipReadSettings].
  /// [preserveCompressionFileNameAsFolder] Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  /// [type] The Compression setting type.
  TarGZipReadSettings({
    this.preserveCompressionFileNameAsFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveCompressionFileNameAsFolder': ?preserveCompressionFileNameAsFolder,
      'type': type,
    };
  }

  factory TarGZipReadSettings.fromMap(Map<String, dynamic> map) {
    return TarGZipReadSettings(
      preserveCompressionFileNameAsFolder: (() { final guardedValue = map['preserveCompressionFileNameAsFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

