// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tar_gzip_read_settings_response.dart';

/// Parquet read settings.
class ParquetReadSettingsResponse {
  /// Compression settings.
  final pulumi.Input<TarGZipReadSettingsResponse>? compressionProperties;
  /// The read setting type.
  /// Expected value is 'ParquetReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [ParquetReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  ParquetReadSettingsResponse({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?pulumi.Input.mapOptionalInputValue<TarGZipReadSettingsResponse, Map<String, dynamic>>(compressionProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ParquetReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ParquetReadSettingsResponse(
      compressionProperties: map['compressionProperties'] == null ? null : (TarGZipReadSettingsResponse.fromMap((map['compressionProperties']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

