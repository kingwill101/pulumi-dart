// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parquet read settings.
class ParquetReadSettingsResponse {
  /// Compression settings.
  final pulumi.Input<dynamic>? compressionProperties;
  /// The read setting type.
  /// Expected value is 'ParquetReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [ParquetReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  const ParquetReadSettingsResponse({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties,
      'type': type,
    };
  }

  factory ParquetReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ParquetReadSettingsResponse(
      compressionProperties: (() { final guardedValue = map['compressionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
