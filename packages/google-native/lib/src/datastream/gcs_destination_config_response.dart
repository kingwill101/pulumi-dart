// ignore_for_file: unused_element, unnecessary_cast

import 'json_file_format_response.dart';

/// Google Cloud Storage destination configuration
class GcsDestinationConfigResponse {
  /// AVRO file format configuration.
  final Map<String, dynamic> avroFileFormat;

  /// The maximum duration for which new events are added before a file is closed and a new file is created. Values within the range of 15-60 seconds are allowed.
  final String fileRotationInterval;

  /// The maximum file size to be saved in the bucket.
  final int fileRotationMb;

  /// JSON file format configuration.
  final JsonFileFormatResponse jsonFileFormat;

  /// Path inside the Cloud Storage bucket to write data to.
  final String path;

  /// Creates a new [GcsDestinationConfigResponse].
  /// [avroFileFormat] AVRO file format configuration.
  /// [fileRotationInterval] The maximum duration for which new events are added before a file is closed and a new file is created. Values within the range of 15-60 seconds are allowed.
  /// [fileRotationMb] The maximum file size to be saved in the bucket.
  /// [jsonFileFormat] JSON file format configuration.
  /// [path] Path inside the Cloud Storage bucket to write data to.
  GcsDestinationConfigResponse({
    required this.avroFileFormat,
    required this.fileRotationInterval,
    required this.fileRotationMb,
    required this.jsonFileFormat,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroFileFormat': avroFileFormat,
      'fileRotationInterval': fileRotationInterval,
      'fileRotationMb': fileRotationMb,
      'jsonFileFormat': jsonFileFormat.toMap(),
      'path': path,
    };
  }

  factory GcsDestinationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GcsDestinationConfigResponse(
      avroFileFormat: (map['avroFileFormat'] as Map).cast<String, dynamic>(),
      fileRotationInterval: map['fileRotationInterval'] as String,
      fileRotationMb: map['fileRotationMb'] as int,
      jsonFileFormat: JsonFileFormatResponse.fromMap(
        (map['jsonFileFormat'] as Map).cast<String, dynamic>(),
      ),
      path: map['path'] as String,
    );
  }
}
