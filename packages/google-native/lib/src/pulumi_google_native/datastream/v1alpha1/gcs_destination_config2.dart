// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_destination_config_gcs_file_format.dart';
import 'json_file_format2.dart';

/// Google Cloud Storage destination configuration
class GcsDestinationConfig2 {
  /// AVRO file format configuration.
  final Map<String, dynamic>? avroFileFormat;

  /// The maximum duration for which new events are added before a file is closed and a new file is created.
  final String? fileRotationInterval;

  /// The maximum file size to be saved in the bucket.
  final int? fileRotationMb;

  /// File format that data should be written in. Deprecated field (b/169501737) - use file_format instead.
  final GcsDestinationConfigGcsFileFormat? gcsFileFormat;

  /// JSON file format configuration.
  final JsonFileFormat2? jsonFileFormat;

  /// Path inside the Cloud Storage bucket to write data to.
  final String? path;

  GcsDestinationConfig2({
    this.avroFileFormat,
    this.fileRotationInterval,
    this.fileRotationMb,
    this.gcsFileFormat,
    this.jsonFileFormat,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final avroFileFormatValue = avroFileFormat;
    if (avroFileFormatValue != null) {
      map['avroFileFormat'] = avroFileFormatValue;
    }
    final fileRotationIntervalValue = fileRotationInterval;
    if (fileRotationIntervalValue != null) {
      map['fileRotationInterval'] = fileRotationIntervalValue;
    }
    final fileRotationMbValue = fileRotationMb;
    if (fileRotationMbValue != null) {
      map['fileRotationMb'] = fileRotationMbValue;
    }
    final gcsFileFormatValue = gcsFileFormat;
    if (gcsFileFormatValue != null) {
      map['gcsFileFormat'] = gcsFileFormatValue.value;
    }
    final jsonFileFormatValue = jsonFileFormat;
    if (jsonFileFormatValue != null) {
      map['jsonFileFormat'] = jsonFileFormatValue.toMap();
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory GcsDestinationConfig2.fromMap(Map<String, dynamic> map) {
    return GcsDestinationConfig2(
      avroFileFormat: map['avroFileFormat'] == null
          ? null
          : (map['avroFileFormat'] as Map).cast<String, dynamic>(),
      fileRotationInterval: map['fileRotationInterval'] == null
          ? null
          : map['fileRotationInterval'] as String,
      fileRotationMb:
          map['fileRotationMb'] == null ? null : map['fileRotationMb'] as int,
      gcsFileFormat: map['gcsFileFormat'] == null
          ? null
          : GcsDestinationConfigGcsFileFormat.fromValue(
              map['gcsFileFormat'] as String),
      jsonFileFormat: map['jsonFileFormat'] == null
          ? null
          : JsonFileFormat2.fromMap(
              (map['jsonFileFormat'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
