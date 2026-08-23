// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The TarGZip compression read settings.
class TarGZipReadSettingsResponse {
  /// Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? preserveCompressionFileNameAsFolder;
  /// The Compression setting type.
  /// Expected value is 'TarGZipReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [TarGZipReadSettingsResponse].
  /// [preserveCompressionFileNameAsFolder] Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  /// [type] The Compression setting type.
  const TarGZipReadSettingsResponse({
    this.preserveCompressionFileNameAsFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveCompressionFileNameAsFolder': ?preserveCompressionFileNameAsFolder,
      'type': type,
    };
  }

  factory TarGZipReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TarGZipReadSettingsResponse(
      preserveCompressionFileNameAsFolder: (() { final guardedValue = map['preserveCompressionFileNameAsFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
