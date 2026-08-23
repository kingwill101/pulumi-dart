// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tar_gzip_read_settings.dart';

/// Parquet read settings.
class ParquetReadSettings {
  /// Compression settings.
  final pulumi.Input<TarGZipReadSettings>? compressionProperties;
  /// The read setting type.
  /// Expected value is 'ParquetReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [ParquetReadSettings].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  const ParquetReadSettings({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?pulumi.Input.mapOptionalInputValue<TarGZipReadSettings, Map<String, dynamic>>(compressionProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ParquetReadSettings.fromMap(Map<String, dynamic> map) {
    return ParquetReadSettings(
      compressionProperties: (() { final guardedValue = map['compressionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TarGZipReadSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
