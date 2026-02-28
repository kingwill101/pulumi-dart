// ignore_for_file: unused_element, unnecessary_cast

import 'topic_ingestion_data_source_settings_aws_kinesis.dart';
import 'topic_ingestion_data_source_settings_aws_msk.dart';
import 'topic_ingestion_data_source_settings_azure_event_hubs.dart';
import 'topic_ingestion_data_source_settings_cloud_storage.dart';
import 'topic_ingestion_data_source_settings_confluent_cloud.dart';
import 'topic_ingestion_data_source_settings_platform_logs_settings.dart';

class TopicIngestionDataSourceSettings {
  /// Settings for ingestion from Amazon Kinesis Data Streams.
  /// Structure is documented below.
  final TopicIngestionDataSourceSettingsAwsKinesis? awsKinesis;

  /// Settings for ingestion from Amazon Managed Streaming for Apache Kafka.
  /// Structure is documented below.
  final TopicIngestionDataSourceSettingsAwsMsk? awsMsk;

  /// Settings for ingestion from Azure Event Hubs.
  /// Structure is documented below.
  final TopicIngestionDataSourceSettingsAzureEventHubs? azureEventHubs;

  /// Settings for ingestion from Cloud Storage.
  /// Structure is documented below.
  final TopicIngestionDataSourceSettingsCloudStorage? cloudStorage;

  /// Settings for ingestion from Confluent Cloud.
  /// Structure is documented below.
  final TopicIngestionDataSourceSettingsConfluentCloud? confluentCloud;

  /// Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,
  /// no Platform Logs will be generated.'
  /// Structure is documented below.
  final TopicIngestionDataSourceSettingsPlatformLogsSettings?
      platformLogsSettings;

  /// Creates a new [TopicIngestionDataSourceSettings].
  /// [awsKinesis] Settings for ingestion from Amazon Kinesis Data Streams.
  /// [awsMsk] Settings for ingestion from Amazon Managed Streaming for Apache Kafka.
  /// [azureEventHubs] Settings for ingestion from Azure Event Hubs.
  /// [cloudStorage] Settings for ingestion from Cloud Storage.
  /// [confluentCloud] Settings for ingestion from Confluent Cloud.
  /// [platformLogsSettings] Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,
  TopicIngestionDataSourceSettings({
    this.awsKinesis,
    this.awsMsk,
    this.azureEventHubs,
    this.cloudStorage,
    this.confluentCloud,
    this.platformLogsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsKinesisValue = awsKinesis;
    if (awsKinesisValue != null) {
      map['awsKinesis'] = awsKinesisValue.toMap();
    }
    final awsMskValue = awsMsk;
    if (awsMskValue != null) {
      map['awsMsk'] = awsMskValue.toMap();
    }
    final azureEventHubsValue = azureEventHubs;
    if (azureEventHubsValue != null) {
      map['azureEventHubs'] = azureEventHubsValue.toMap();
    }
    final cloudStorageValue = cloudStorage;
    if (cloudStorageValue != null) {
      map['cloudStorage'] = cloudStorageValue.toMap();
    }
    final confluentCloudValue = confluentCloud;
    if (confluentCloudValue != null) {
      map['confluentCloud'] = confluentCloudValue.toMap();
    }
    final platformLogsSettingsValue = platformLogsSettings;
    if (platformLogsSettingsValue != null) {
      map['platformLogsSettings'] = platformLogsSettingsValue.toMap();
    }
    return map;
  }

  factory TopicIngestionDataSourceSettings.fromMap(Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettings(
      awsKinesis: map['awsKinesis'] == null
          ? null
          : TopicIngestionDataSourceSettingsAwsKinesis.fromMap(
              (map['awsKinesis'] as Map).cast<String, dynamic>()),
      awsMsk: map['awsMsk'] == null
          ? null
          : TopicIngestionDataSourceSettingsAwsMsk.fromMap(
              (map['awsMsk'] as Map).cast<String, dynamic>()),
      azureEventHubs: map['azureEventHubs'] == null
          ? null
          : TopicIngestionDataSourceSettingsAzureEventHubs.fromMap(
              (map['azureEventHubs'] as Map).cast<String, dynamic>()),
      cloudStorage: map['cloudStorage'] == null
          ? null
          : TopicIngestionDataSourceSettingsCloudStorage.fromMap(
              (map['cloudStorage'] as Map).cast<String, dynamic>()),
      confluentCloud: map['confluentCloud'] == null
          ? null
          : TopicIngestionDataSourceSettingsConfluentCloud.fromMap(
              (map['confluentCloud'] as Map).cast<String, dynamic>()),
      platformLogsSettings: map['platformLogsSettings'] == null
          ? null
          : TopicIngestionDataSourceSettingsPlatformLogsSettings.fromMap(
              (map['platformLogsSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
