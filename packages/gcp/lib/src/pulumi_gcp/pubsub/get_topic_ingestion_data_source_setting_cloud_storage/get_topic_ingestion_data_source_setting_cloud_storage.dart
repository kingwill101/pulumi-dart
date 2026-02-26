// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_topic_ingestion_data_source_setting_cloud_storage_text_format/get_topic_ingestion_data_source_setting_cloud_storage_text_format.dart';

class GetTopicIngestionDataSourceSettingCloudStorage {
  /// Configuration for reading Cloud Storage data in Avro binary format. The
  /// bytes of each object will be set to the 'data' field of a Pub/Sub message.
  final List<Map<String, dynamic>> avroFormats;

  /// Cloud Storage bucket. The bucket name must be without any
  /// prefix like "gs://". See the bucket naming requirements:
  /// https://cloud.google.com/storage/docs/buckets#naming.
  final String bucket;

  /// Glob pattern used to match objects that will be ingested. If unset, all
  /// objects will be ingested. See the supported patterns:
  /// https://cloud.google.com/storage/docs/json_api/v1/objects/list#list-objects-and-prefixes-using-glob
  final String matchGlob;

  /// The timestamp set in RFC3339 text format. If set, only objects with a
  /// larger or equal timestamp will be ingested. Unset by default, meaning
  /// all objects will be ingested.
  final String minimumObjectCreateTime;

  /// Configuration for reading Cloud Storage data written via Cloud Storage
  /// subscriptions(See https://cloud.google.com/pubsub/docs/cloudstorage). The
  /// data and attributes fields of the originally exported Pub/Sub message
  /// will be restored when publishing.
  final List<Map<String, dynamic>> pubsubAvroFormats;

  /// Configuration for reading Cloud Storage data in text format. Each line of
  /// text as specified by the delimiter will be set to the 'data' field of a
  /// Pub/Sub message.
  final List<GetTopicIngestionDataSourceSettingCloudStorageTextFormat>
      textFormats;

  GetTopicIngestionDataSourceSettingCloudStorage({
    required this.avroFormats,
    required this.bucket,
    required this.matchGlob,
    required this.minimumObjectCreateTime,
    required this.pubsubAvroFormats,
    required this.textFormats,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['avroFormats'] = avroFormats;
    map['bucket'] = bucket;
    map['matchGlob'] = matchGlob;
    map['minimumObjectCreateTime'] = minimumObjectCreateTime;
    map['pubsubAvroFormats'] = pubsubAvroFormats;
    map['textFormats'] = Input.encodeList<
        GetTopicIngestionDataSourceSettingCloudStorageTextFormat,
        Map<String, dynamic>>(textFormats, (value) => value.toMap());
    return map;
  }

  factory GetTopicIngestionDataSourceSettingCloudStorage.fromMap(
      Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingCloudStorage(
      avroFormats: (map['avroFormats'] as List).cast<Map<String, dynamic>>(),
      bucket: map['bucket'] as String,
      matchGlob: map['matchGlob'] as String,
      minimumObjectCreateTime: map['minimumObjectCreateTime'] as String,
      pubsubAvroFormats:
          (map['pubsubAvroFormats'] as List).cast<Map<String, dynamic>>(),
      textFormats: Input.decodeList<
              GetTopicIngestionDataSourceSettingCloudStorageTextFormat>(
          map['textFormats'],
          (value) =>
              GetTopicIngestionDataSourceSettingCloudStorageTextFormat.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
