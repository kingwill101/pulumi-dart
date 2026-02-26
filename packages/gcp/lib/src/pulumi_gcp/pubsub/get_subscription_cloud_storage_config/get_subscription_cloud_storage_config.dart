// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_subscription_cloud_storage_config_avro_config/get_subscription_cloud_storage_config_avro_config.dart';

class GetSubscriptionCloudStorageConfig {
  /// If set, message data will be written to Cloud Storage in Avro format.
  final List<GetSubscriptionCloudStorageConfigAvroConfig> avroConfigs;

  /// User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://".
  final String bucket;

  /// User-provided format string specifying how to represent datetimes in Cloud Storage filenames.
  final String filenameDatetimeFormat;

  /// User-provided prefix for Cloud Storage filename.
  final String filenamePrefix;

  /// User-provided suffix for Cloud Storage filename. Must not end in "/".
  final String filenameSuffix;

  /// The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB.
  /// The maxBytes limit may be exceeded in cases where messages are larger than the limit.
  final int maxBytes;

  /// The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes.
  /// May not exceed the subscription's acknowledgement deadline.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String maxDuration;

  /// The maximum messages that can be written to a Cloud Storage file before a new file is created. Min 1000 messages.
  final int maxMessages;

  /// The service account to use to write to Cloud Storage. If not specified, the Pub/Sub
  /// [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final String serviceAccountEmail;

  /// An output-only field that indicates whether or not the subscription can receive messages.
  final String state;

  GetSubscriptionCloudStorageConfig({
    required this.avroConfigs,
    required this.bucket,
    required this.filenameDatetimeFormat,
    required this.filenamePrefix,
    required this.filenameSuffix,
    required this.maxBytes,
    required this.maxDuration,
    required this.maxMessages,
    required this.serviceAccountEmail,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['avroConfigs'] = Input.encodeList<
        GetSubscriptionCloudStorageConfigAvroConfig,
        Map<String, dynamic>>(avroConfigs, (value) => value.toMap());
    map['bucket'] = bucket;
    map['filenameDatetimeFormat'] = filenameDatetimeFormat;
    map['filenamePrefix'] = filenamePrefix;
    map['filenameSuffix'] = filenameSuffix;
    map['maxBytes'] = maxBytes;
    map['maxDuration'] = maxDuration;
    map['maxMessages'] = maxMessages;
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['state'] = state;
    return map;
  }

  factory GetSubscriptionCloudStorageConfig.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionCloudStorageConfig(
      avroConfigs:
          Input.decodeList<GetSubscriptionCloudStorageConfigAvroConfig>(
              map['avroConfigs'],
              (value) => GetSubscriptionCloudStorageConfigAvroConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bucket: map['bucket'] as String,
      filenameDatetimeFormat: map['filenameDatetimeFormat'] as String,
      filenamePrefix: map['filenamePrefix'] as String,
      filenameSuffix: map['filenameSuffix'] as String,
      maxBytes: map['maxBytes'] as int,
      maxDuration: map['maxDuration'] as String,
      maxMessages: map['maxMessages'] as int,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      state: map['state'] as String,
    );
  }
}
