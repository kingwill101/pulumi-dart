// ignore_for_file: unused_element, unnecessary_cast

import 'subscription_cloud_storage_config_avro_config.dart';

class SubscriptionCloudStorageConfig {
  /// If set, message data will be written to Cloud Storage in Avro format.
  /// Structure is documented below.
  final SubscriptionCloudStorageConfigAvroConfig? avroConfig;

  /// User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://".
  final String bucket;

  /// User-provided format string specifying how to represent datetimes in Cloud Storage filenames.
  final String? filenameDatetimeFormat;

  /// User-provided prefix for Cloud Storage filename.
  final String? filenamePrefix;

  /// User-provided suffix for Cloud Storage filename. Must not end in "/".
  final String? filenameSuffix;

  /// The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB.
  /// The maxBytes limit may be exceeded in cases where messages are larger than the limit.
  final int? maxBytes;

  /// The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes.
  /// May not exceed the subscription's acknowledgement deadline.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? maxDuration;

  /// The maximum messages that can be written to a Cloud Storage file before a new file is created. Min 1000 messages.
  final int? maxMessages;

  /// The service account to use to write to Cloud Storage. If not specified, the Pub/Sub
  /// [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final String? serviceAccountEmail;

  /// (Output)
  /// An output-only field that indicates whether or not the subscription can receive messages.
  final String? state;

  /// Creates a new [SubscriptionCloudStorageConfig].
  /// [avroConfig] If set, message data will be written to Cloud Storage in Avro format.
  /// [bucket] User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://".
  /// [filenameDatetimeFormat] User-provided format string specifying how to represent datetimes in Cloud Storage filenames.
  /// [filenamePrefix] User-provided prefix for Cloud Storage filename.
  /// [filenameSuffix] User-provided suffix for Cloud Storage filename. Must not end in "/".
  /// [maxBytes] The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB.
  /// [maxDuration] The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes.
  /// [maxMessages] The maximum messages that can be written to a Cloud Storage file before a new file is created. Min 1000 messages.
  /// [serviceAccountEmail] The service account to use to write to Cloud Storage. If not specified, the Pub/Sub
  /// [state] (Output)
  SubscriptionCloudStorageConfig({
    this.avroConfig,
    required this.bucket,
    this.filenameDatetimeFormat,
    this.filenamePrefix,
    this.filenameSuffix,
    this.maxBytes,
    this.maxDuration,
    this.maxMessages,
    this.serviceAccountEmail,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final avroConfigValue = avroConfig;
    if (avroConfigValue != null) {
      map['avroConfig'] = avroConfigValue.toMap();
    }
    map['bucket'] = bucket;
    final filenameDatetimeFormatValue = filenameDatetimeFormat;
    if (filenameDatetimeFormatValue != null) {
      map['filenameDatetimeFormat'] = filenameDatetimeFormatValue;
    }
    final filenamePrefixValue = filenamePrefix;
    if (filenamePrefixValue != null) {
      map['filenamePrefix'] = filenamePrefixValue;
    }
    final filenameSuffixValue = filenameSuffix;
    if (filenameSuffixValue != null) {
      map['filenameSuffix'] = filenameSuffixValue;
    }
    final maxBytesValue = maxBytes;
    if (maxBytesValue != null) {
      map['maxBytes'] = maxBytesValue;
    }
    final maxDurationValue = maxDuration;
    if (maxDurationValue != null) {
      map['maxDuration'] = maxDurationValue;
    }
    final maxMessagesValue = maxMessages;
    if (maxMessagesValue != null) {
      map['maxMessages'] = maxMessagesValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory SubscriptionCloudStorageConfig.fromMap(Map<String, dynamic> map) {
    return SubscriptionCloudStorageConfig(
      avroConfig: map['avroConfig'] == null
          ? null
          : SubscriptionCloudStorageConfigAvroConfig.fromMap(
              (map['avroConfig'] as Map).cast<String, dynamic>()),
      bucket: map['bucket'] as String,
      filenameDatetimeFormat: map['filenameDatetimeFormat'] == null
          ? null
          : map['filenameDatetimeFormat'] as String,
      filenamePrefix: map['filenamePrefix'] == null
          ? null
          : map['filenamePrefix'] as String,
      filenameSuffix: map['filenameSuffix'] == null
          ? null
          : map['filenameSuffix'] as String,
      maxBytes: map['maxBytes'] == null ? null : map['maxBytes'] as int,
      maxDuration:
          map['maxDuration'] == null ? null : map['maxDuration'] as String,
      maxMessages:
          map['maxMessages'] == null ? null : map['maxMessages'] as int,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
