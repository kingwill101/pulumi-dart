// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tar_gzip_read_settings.dart';

/// Json read settings.
class JsonReadSettings {
  /// Compression settings.
  final pulumi.Input<TarGZipReadSettings>? compressionProperties;
  /// The read setting type.
  /// Expected value is 'JsonReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [JsonReadSettings].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  JsonReadSettings({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?pulumi.Input.mapOptionalInputValue<TarGZipReadSettings, Map<String, dynamic>>(compressionProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory JsonReadSettings.fromMap(Map<String, dynamic> map) {
    return JsonReadSettings(
      compressionProperties: map['compressionProperties'] == null ? null : (TarGZipReadSettings.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

