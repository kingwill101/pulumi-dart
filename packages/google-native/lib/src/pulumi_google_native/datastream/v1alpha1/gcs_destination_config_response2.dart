// ignore_for_file: unused_element, unnecessary_cast

import 'json_file_format_response2.dart';

/// Google Cloud Storage destination configuration
class GcsDestinationConfigResponse2 {
  /// AVRO file format configuration.
  final Map<String, dynamic> avroFileFormat;

  /// The maximum duration for which new events are added before a file is closed and a new file is created.
  final String fileRotationInterval;

  /// The maximum file size to be saved in the bucket.
  final int fileRotationMb;

  /// File format that data should be written in. Deprecated field (b/169501737) - use file_format instead.
  final String gcsFileFormat;

  /// JSON file format configuration.
  final JsonFileFormatResponse2 jsonFileFormat;

  /// Path inside the Cloud Storage bucket to write data to.
  final String path;

  GcsDestinationConfigResponse2({
    required this.avroFileFormat,
    required this.fileRotationInterval,
    required this.fileRotationMb,
    required this.gcsFileFormat,
    required this.jsonFileFormat,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['avroFileFormat'] = avroFileFormat;
    map['fileRotationInterval'] = fileRotationInterval;
    map['fileRotationMb'] = fileRotationMb;
    map['gcsFileFormat'] = gcsFileFormat;
    map['jsonFileFormat'] = jsonFileFormat.toMap();
    map['path'] = path;
    return map;
  }

  factory GcsDestinationConfigResponse2.fromMap(Map<String, dynamic> map) {
    return GcsDestinationConfigResponse2(
      avroFileFormat: (map['avroFileFormat'] as Map).cast<String, dynamic>(),
      fileRotationInterval: map['fileRotationInterval'] as String,
      fileRotationMb: map['fileRotationMb'] as int,
      gcsFileFormat: map['gcsFileFormat'] as String,
      jsonFileFormat: JsonFileFormatResponse2.fromMap(
          (map['jsonFileFormat'] as Map).cast<String, dynamic>()),
      path: map['path'] as String,
    );
  }
}
