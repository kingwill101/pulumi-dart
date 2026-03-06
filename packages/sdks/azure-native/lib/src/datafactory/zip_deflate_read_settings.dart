// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ZipDeflate compression read settings.
class ZipDeflateReadSettings {
  /// Preserve the zip file name as folder path. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? preserveZipFileNameAsFolder;
  /// The Compression setting type.
  /// Expected value is 'ZipDeflateReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [ZipDeflateReadSettings].
  /// [preserveZipFileNameAsFolder] Preserve the zip file name as folder path. Type: boolean (or Expression with resultType boolean).
  /// [type] The Compression setting type.
  const ZipDeflateReadSettings({
    this.preserveZipFileNameAsFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveZipFileNameAsFolder': ?preserveZipFileNameAsFolder,
      'type': type,
    };
  }

  factory ZipDeflateReadSettings.fromMap(Map<String, dynamic> map) {
    return ZipDeflateReadSettings(
      preserveZipFileNameAsFolder: (() { final guardedValue = map['preserveZipFileNameAsFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

