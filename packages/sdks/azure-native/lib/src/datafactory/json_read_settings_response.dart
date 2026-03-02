// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tar_gzip_read_settings_response.dart';

/// Json read settings.
class JsonReadSettingsResponse {
  /// Compression settings.
  final pulumi.Input<TarGZipReadSettingsResponse>? compressionProperties;
  /// The read setting type.
  /// Expected value is 'JsonReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [JsonReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  JsonReadSettingsResponse({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?pulumi.Input.mapOptionalInputValue<TarGZipReadSettingsResponse, Map<String, dynamic>>(compressionProperties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory JsonReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return JsonReadSettingsResponse(
      compressionProperties: map['compressionProperties'] == null ? null : (TarGZipReadSettingsResponse.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

