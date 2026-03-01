// ignore_for_file: unused_element, unnecessary_cast

import 'tar_gzip_read_settings_response.dart';

/// Delimited text read settings.
class DelimitedTextReadSettingsResponse {
  /// Compression settings.
  final TarGZipReadSettingsResponse? compressionProperties;
  /// Indicates the number of non-empty rows to skip when reading data from input files. Type: integer (or Expression with resultType integer).
  final dynamic skipLineCount;
  /// The read setting type.
  /// Expected value is 'DelimitedTextReadSettings'.
  final String type;

  /// Creates a new [DelimitedTextReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [skipLineCount] Indicates the number of non-empty rows to skip when reading data from input files. Type: integer (or Expression with resultType integer).
  /// [type] The read setting type.
  DelimitedTextReadSettingsResponse({
    this.compressionProperties,
    this.skipLineCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties == null ? null : compressionProperties!.toMap(),
      'skipLineCount': ?skipLineCount,
      'type': type,
    };
  }

  factory DelimitedTextReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DelimitedTextReadSettingsResponse(
      compressionProperties: map['compressionProperties'] == null ? null : TarGZipReadSettingsResponse.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>()),
      skipLineCount: map['skipLineCount'] == null ? null : map['skipLineCount'],
      type: map['type'] as String,
    );
  }
}

