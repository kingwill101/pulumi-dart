// ignore_for_file: unused_element, unnecessary_cast

import 'avro_config_response.dart';

/// Configuration for a Cloud Storage subscription.
class CloudStorageConfigResponse {
  /// Optional. If set, message data will be written to Cloud Storage in Avro format.
  final AvroConfigResponse avroConfig;

  /// User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://". See the [bucket naming requirements] (https://cloud.google.com/storage/docs/buckets#naming).
  final String bucket;

  /// Optional. User-provided prefix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  final String filenamePrefix;

  /// Optional. User-provided suffix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming). Must not end in "/".
  final String filenameSuffix;

  /// Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where messages are larger than the limit.
  final String maxBytes;

  /// Optional. The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's acknowledgement deadline.
  final String maxDuration;

  /// An output-only field that indicates whether or not the subscription can receive messages.
  final String state;

  /// Optional. If set, message data will be written to Cloud Storage in text format.
  final Map<String, dynamic> textConfig;

  CloudStorageConfigResponse({
    required this.avroConfig,
    required this.bucket,
    required this.filenamePrefix,
    required this.filenameSuffix,
    required this.maxBytes,
    required this.maxDuration,
    required this.state,
    required this.textConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['avroConfig'] = avroConfig.toMap();
    map['bucket'] = bucket;
    map['filenamePrefix'] = filenamePrefix;
    map['filenameSuffix'] = filenameSuffix;
    map['maxBytes'] = maxBytes;
    map['maxDuration'] = maxDuration;
    map['state'] = state;
    map['textConfig'] = textConfig;
    return map;
  }

  factory CloudStorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return CloudStorageConfigResponse(
      avroConfig: AvroConfigResponse.fromMap(
          (map['avroConfig'] as Map).cast<String, dynamic>()),
      bucket: map['bucket'] as String,
      filenamePrefix: map['filenamePrefix'] as String,
      filenameSuffix: map['filenameSuffix'] as String,
      maxBytes: map['maxBytes'] as String,
      maxDuration: map['maxDuration'] as String,
      state: map['state'] as String,
      textConfig: (map['textConfig'] as Map).cast<String, dynamic>(),
    );
  }
}
