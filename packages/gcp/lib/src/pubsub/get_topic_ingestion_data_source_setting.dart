// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_ingestion_data_source_setting_aws_kinese.dart';
import 'get_topic_ingestion_data_source_setting_aws_msk.dart';
import 'get_topic_ingestion_data_source_setting_azure_event_hub.dart';
import 'get_topic_ingestion_data_source_setting_cloud_storage.dart';
import 'get_topic_ingestion_data_source_setting_confluent_cloud.dart';
import 'get_topic_ingestion_data_source_setting_platform_logs_setting.dart';

class GetTopicIngestionDataSourceSetting {
  /// Settings for ingestion from Amazon Kinesis Data Streams.
  final List<GetTopicIngestionDataSourceSettingAwsKinese> awsKineses;
  /// Settings for ingestion from Amazon Managed Streaming for Apache Kafka.
  final List<GetTopicIngestionDataSourceSettingAwsMsk> awsMsks;
  /// Settings for ingestion from Azure Event Hubs.
  final List<GetTopicIngestionDataSourceSettingAzureEventHub> azureEventHubs;
  /// Settings for ingestion from Cloud Storage.
  final List<GetTopicIngestionDataSourceSettingCloudStorage> cloudStorages;
  /// Settings for ingestion from Confluent Cloud.
  final List<GetTopicIngestionDataSourceSettingConfluentCloud> confluentClouds;
  /// Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,
  /// no Platform Logs will be generated.'
  final List<GetTopicIngestionDataSourceSettingPlatformLogsSetting> platformLogsSettings;

  /// Creates a new [GetTopicIngestionDataSourceSetting].
  /// [awsKineses] Settings for ingestion from Amazon Kinesis Data Streams.
  /// [awsMsks] Settings for ingestion from Amazon Managed Streaming for Apache Kafka.
  /// [azureEventHubs] Settings for ingestion from Azure Event Hubs.
  /// [cloudStorages] Settings for ingestion from Cloud Storage.
  /// [confluentClouds] Settings for ingestion from Confluent Cloud.
  /// [platformLogsSettings] Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,
  GetTopicIngestionDataSourceSetting({
    required this.awsKineses,
    required this.awsMsks,
    required this.azureEventHubs,
    required this.cloudStorages,
    required this.confluentClouds,
    required this.platformLogsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsKineses': pulumi.Input.encodeList<GetTopicIngestionDataSourceSettingAwsKinese, Map<String, dynamic>>(awsKineses, (value) => value.toMap()),
      'awsMsks': pulumi.Input.encodeList<GetTopicIngestionDataSourceSettingAwsMsk, Map<String, dynamic>>(awsMsks, (value) => value.toMap()),
      'azureEventHubs': pulumi.Input.encodeList<GetTopicIngestionDataSourceSettingAzureEventHub, Map<String, dynamic>>(azureEventHubs, (value) => value.toMap()),
      'cloudStorages': pulumi.Input.encodeList<GetTopicIngestionDataSourceSettingCloudStorage, Map<String, dynamic>>(cloudStorages, (value) => value.toMap()),
      'confluentClouds': pulumi.Input.encodeList<GetTopicIngestionDataSourceSettingConfluentCloud, Map<String, dynamic>>(confluentClouds, (value) => value.toMap()),
      'platformLogsSettings': pulumi.Input.encodeList<GetTopicIngestionDataSourceSettingPlatformLogsSetting, Map<String, dynamic>>(platformLogsSettings, (value) => value.toMap()),
    };
  }

  factory GetTopicIngestionDataSourceSetting.fromMap(Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSetting(
      awsKineses: pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingAwsKinese>(map['awsKineses'], (value) => GetTopicIngestionDataSourceSettingAwsKinese.fromMap((value as Map).cast<String, dynamic>())),
      awsMsks: pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingAwsMsk>(map['awsMsks'], (value) => GetTopicIngestionDataSourceSettingAwsMsk.fromMap((value as Map).cast<String, dynamic>())),
      azureEventHubs: pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingAzureEventHub>(map['azureEventHubs'], (value) => GetTopicIngestionDataSourceSettingAzureEventHub.fromMap((value as Map).cast<String, dynamic>())),
      cloudStorages: pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingCloudStorage>(map['cloudStorages'], (value) => GetTopicIngestionDataSourceSettingCloudStorage.fromMap((value as Map).cast<String, dynamic>())),
      confluentClouds: pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingConfluentCloud>(map['confluentClouds'], (value) => GetTopicIngestionDataSourceSettingConfluentCloud.fromMap((value as Map).cast<String, dynamic>())),
      platformLogsSettings: pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingPlatformLogsSetting>(map['platformLogsSettings'], (value) => GetTopicIngestionDataSourceSettingPlatformLogsSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

