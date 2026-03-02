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
  ParquetReadSettings({
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
      compressionProperties: map['compressionProperties'] == null ? null : (TarGZipReadSettings.fromMap((map['compressionProperties']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

