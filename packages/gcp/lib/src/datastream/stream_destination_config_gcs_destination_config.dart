// ignore_for_file: unused_element, unnecessary_cast

import 'stream_destination_config_gcs_destination_config_json_file_format.dart';

class StreamDestinationConfigGcsDestinationConfig {
  /// AVRO file format configuration.
  final Map<String, dynamic>? avroFileFormat;

  /// The maximum duration for which new events are added before a file is closed and a new file is created.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s". Defaults to 900s.
  final String? fileRotationInterval;

  /// The maximum file size to be saved in the bucket.
  final int? fileRotationMb;

  /// JSON file format configuration.
  /// Structure is documented below.
  final StreamDestinationConfigGcsDestinationConfigJsonFileFormat?
  jsonFileFormat;

  /// Path inside the Cloud Storage bucket to write data to.
  final String? path;

  /// Creates a new [StreamDestinationConfigGcsDestinationConfig].
  /// [avroFileFormat] AVRO file format configuration.
  /// [fileRotationInterval] The maximum duration for which new events are added before a file is closed and a new file is created.
  /// [fileRotationMb] The maximum file size to be saved in the bucket.
  /// [jsonFileFormat] JSON file format configuration.
  /// [path] Path inside the Cloud Storage bucket to write data to.
  StreamDestinationConfigGcsDestinationConfig({
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

  factory StreamDestinationConfigGcsDestinationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamDestinationConfigGcsDestinationConfig(
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
          : StreamDestinationConfigGcsDestinationConfigJsonFileFormat.fromMap(
              (map['jsonFileFormat'] as Map).cast<String, dynamic>(),
            ),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
