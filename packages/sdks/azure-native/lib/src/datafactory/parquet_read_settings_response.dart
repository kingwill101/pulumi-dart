// ignore_for_file: unused_element, unnecessary_cast

import 'tar_gzip_read_settings_response.dart';

/// Parquet read settings.
class ParquetReadSettingsResponse {
  /// Compression settings.
  final TarGZipReadSettingsResponse? compressionProperties;
  /// The read setting type.
  /// Expected value is 'ParquetReadSettings'.
  final String type;

  /// Creates a new [ParquetReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  ParquetReadSettingsResponse({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties == null ? null : compressionProperties!.toMap(),
      'type': type,
    };
  }

  factory ParquetReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ParquetReadSettingsResponse(
      compressionProperties: map['compressionProperties'] == null ? null : TarGZipReadSettingsResponse.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

