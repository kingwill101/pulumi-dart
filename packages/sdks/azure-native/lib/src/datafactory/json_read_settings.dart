// ignore_for_file: unused_element, unnecessary_cast

import 'tar_gzip_read_settings.dart';

/// Json read settings.
class JsonReadSettings {
  /// Compression settings.
  final TarGZipReadSettings? compressionProperties;
  /// The read setting type.
  /// Expected value is 'JsonReadSettings'.
  final String type;

  /// Creates a new [JsonReadSettings].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  JsonReadSettings({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties == null ? null : compressionProperties!.toMap(),
      'type': type,
    };
  }

  factory JsonReadSettings.fromMap(Map<String, dynamic> map) {
    return JsonReadSettings(
      compressionProperties: map['compressionProperties'] == null ? null : TarGZipReadSettings.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

