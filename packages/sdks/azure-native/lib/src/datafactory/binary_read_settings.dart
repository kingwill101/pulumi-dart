// ignore_for_file: unused_element, unnecessary_cast

import 'tar_gzip_read_settings.dart';

/// Binary read settings.
class BinaryReadSettings {
  /// Compression settings.
  final TarGZipReadSettings? compressionProperties;
  /// The read setting type.
  /// Expected value is 'BinaryReadSettings'.
  final String type;

  /// Creates a new [BinaryReadSettings].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  BinaryReadSettings({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties == null ? null : compressionProperties!.toMap(),
      'type': type,
    };
  }

  factory BinaryReadSettings.fromMap(Map<String, dynamic> map) {
    return BinaryReadSettings(
      compressionProperties: map['compressionProperties'] == null ? null : TarGZipReadSettings.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

