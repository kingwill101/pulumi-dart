// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_ingestion_data_source_setting.dart';
import 'get_topic_message_storage_policy.dart';
import 'get_topic_message_transform.dart';
import 'get_topic_schema_setting.dart';

/// Result data returned by getTopic.
class GetTopicResult {
  final Map<String, String> effectiveLabels;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetTopicIngestionDataSourceSetting> ingestionDataSourceSettings;
  final String kmsKeyName;
  final Map<String, String> labels;
  final String messageRetentionDuration;
  final List<GetTopicMessageStoragePolicy> messageStoragePolicies;
  final List<GetTopicMessageTransform> messageTransforms;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetTopicSchemaSetting> schemaSettings;
  final Map<String, String> tags;

  /// Creates a new [GetTopicResult].
  /// [effectiveLabels] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ingestionDataSourceSettings] Required.
  /// [kmsKeyName] Required.
  /// [labels] Required.
  /// [messageRetentionDuration] Required.
  /// [messageStoragePolicies] Required.
  /// [messageTransforms] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [schemaSettings] Required.
  /// [tags] Required.
  GetTopicResult({
    required this.effectiveLabels,
    required this.id,
    required this.ingestionDataSourceSettings,
    required this.kmsKeyName,
    required this.labels,
    required this.messageRetentionDuration,
    required this.messageStoragePolicies,
    required this.messageTransforms,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.schemaSettings,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['effectiveLabels'] = effectiveLabels;
    map['id'] = id;
    map['ingestionDataSourceSettings'] = pulumi.Input.encodeList<
            GetTopicIngestionDataSourceSetting, Map<String, dynamic>>(
        ingestionDataSourceSettings, (value) => value.toMap());
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['messageRetentionDuration'] = messageRetentionDuration;
    map['messageStoragePolicies'] = pulumi.Input.encodeList<
        GetTopicMessageStoragePolicy,
        Map<String, dynamic>>(messageStoragePolicies, (value) => value.toMap());
    map['messageTransforms'] =
        pulumi.Input.encodeList<GetTopicMessageTransform, Map<String, dynamic>>(
            messageTransforms, (value) => value.toMap());
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['schemaSettings'] =
        pulumi.Input.encodeList<GetTopicSchemaSetting, Map<String, dynamic>>(
            schemaSettings, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      ingestionDataSourceSettings:
          pulumi.Input.decodeList<GetTopicIngestionDataSourceSetting>(
              map['ingestionDataSourceSettings'],
              (value) => GetTopicIngestionDataSourceSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      messageRetentionDuration: map['messageRetentionDuration'] as String,
      messageStoragePolicies:
          pulumi.Input.decodeList<GetTopicMessageStoragePolicy>(
              map['messageStoragePolicies'],
              (value) => GetTopicMessageStoragePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      messageTransforms: pulumi.Input.decodeList<GetTopicMessageTransform>(
          map['messageTransforms'],
          (value) => GetTopicMessageTransform.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      schemaSettings: pulumi.Input.decodeList<GetTopicSchemaSetting>(
          map['schemaSettings'],
          (value) => GetTopicSchemaSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
