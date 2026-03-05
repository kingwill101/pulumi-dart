// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Tar compression read settings.
class TarReadSettings {
  /// Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? preserveCompressionFileNameAsFolder;
  /// The Compression setting type.
  /// Expected value is 'TarReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [TarReadSettings].
  /// [preserveCompressionFileNameAsFolder] Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  /// [type] The Compression setting type.
  TarReadSettings({
    this.preserveCompressionFileNameAsFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveCompressionFileNameAsFolder': ?preserveCompressionFileNameAsFolder,
      'type': type,
    };
  }

  factory TarReadSettings.fromMap(Map<String, dynamic> map) {
    return TarReadSettings(
      preserveCompressionFileNameAsFolder: (() { final guardedValue = map['preserveCompressionFileNameAsFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

