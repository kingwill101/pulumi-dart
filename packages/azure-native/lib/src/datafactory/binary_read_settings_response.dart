// ignore_for_file: unused_element, unnecessary_cast

import 'tar_gzip_read_settings_response.dart';

/// Binary read settings.
class BinaryReadSettingsResponse {
  /// Compression settings.
  final TarGZipReadSettingsResponse? compressionProperties;
  /// The read setting type.
  /// Expected value is 'BinaryReadSettings'.
  final String type;

  /// Creates a new [BinaryReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  BinaryReadSettingsResponse({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties == null ? null : compressionProperties!.toMap(),
      'type': type,
    };
  }

  factory BinaryReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BinaryReadSettingsResponse(
      compressionProperties: map['compressionProperties'] == null ? null : TarGZipReadSettingsResponse.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

