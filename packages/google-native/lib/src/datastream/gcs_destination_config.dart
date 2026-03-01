// ignore_for_file: unused_element, unnecessary_cast

import 'json_file_format.dart';

/// Google Cloud Storage destination configuration
class GcsDestinationConfig {
  /// AVRO file format configuration.
  final Map<String, dynamic>? avroFileFormat;

  /// The maximum duration for which new events are added before a file is closed and a new file is created. Values within the range of 15-60 seconds are allowed.
  final String? fileRotationInterval;

  /// The maximum file size to be saved in the bucket.
  final int? fileRotationMb;

  /// JSON file format configuration.
  final JsonFileFormat? jsonFileFormat;

  /// Path inside the Cloud Storage bucket to write data to.
  final String? path;

  /// Creates a new [GcsDestinationConfig].
  /// [avroFileFormat] AVRO file format configuration.
  /// [fileRotationInterval] The maximum duration for which new events are added before a file is closed and a new file is created. Values within the range of 15-60 seconds are allowed.
  /// [fileRotationMb] The maximum file size to be saved in the bucket.
  /// [jsonFileFormat] JSON file format configuration.
  /// [path] Path inside the Cloud Storage bucket to write data to.
  GcsDestinationConfig({
    this.avroFileFormat,
    this.fileRotationInterval,
    this.fileRotationMb,
    this.jsonFileFormat,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroFileFormat': ?avroFileFormat,
      'fileRotationInterval': ?fileRotationInterval,
      'fileRotationMb': ?fileRotationMb,
      'jsonFileFormat': ?jsonFileFormat == null
          ? null
          : jsonFileFormat!.toMap(),
      'path': ?path,
    };
  }

  factory GcsDestinationConfig.fromMap(Map<String, dynamic> map) {
    return GcsDestinationConfig(
      avroFileFormat: map['avroFileFormat'] == null
          ? null
          : (map['avroFileFormat'] as Map).cast<String, dynamic>(),
      fileRotationInterval: map['fileRotationInterval'] == null
          ? null
          : map['fileRotationInterval'] as String,
      fileRotationMb: map['fileRotationMb'] == null
          ? null
          : map['fileRotationMb'] as int,
      jsonFileFormat: map['jsonFileFormat'] == null
          ? null
          : JsonFileFormat.fromMap(
              (map['jsonFileFormat'] as Map).cast<String, dynamic>(),
            ),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
