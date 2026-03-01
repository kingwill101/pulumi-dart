// ignore_for_file: unused_element, unnecessary_cast

import 'tar_gzip_read_settings_response.dart';

/// Json read settings.
class JsonReadSettingsResponse {
  /// Compression settings.
  final TarGZipReadSettingsResponse? compressionProperties;
  /// The read setting type.
  /// Expected value is 'JsonReadSettings'.
  final String type;

  /// Creates a new [JsonReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  JsonReadSettingsResponse({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties == null ? null : compressionProperties!.toMap(),
      'type': type,
    };
  }

  factory JsonReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return JsonReadSettingsResponse(
      compressionProperties: map['compressionProperties'] == null ? null : TarGZipReadSettingsResponse.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

