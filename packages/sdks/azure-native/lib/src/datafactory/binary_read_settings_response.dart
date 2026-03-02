// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tar_gzip_read_settings_response.dart';

/// Binary read settings.
class BinaryReadSettingsResponse {
  /// Compression settings.
  final pulumi.Input<TarGZipReadSettingsResponse>? compressionProperties;
  /// The read setting type.
  /// Expected value is 'BinaryReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [BinaryReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  BinaryReadSettingsResponse({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?pulumi.Input.mapOptionalInputValue<TarGZipReadSettingsResponse, Map<String, dynamic>>(compressionProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory BinaryReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BinaryReadSettingsResponse(
      compressionProperties: map['compressionProperties'] == null ? null : (TarGZipReadSettingsResponse.fromMap((map['compressionProperties']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

