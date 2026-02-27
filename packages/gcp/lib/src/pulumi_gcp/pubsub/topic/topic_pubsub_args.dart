// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../topic_ingestion_data_source_settings/topic_ingestion_data_source_settings.dart';
import '../topic_message_storage_policy/topic_message_storage_policy.dart';
import '../topic_message_transform/topic_message_transform.dart';
import '../topic_schema_settings/topic_schema_settings.dart';

/// The set of arguments for Topic.
class TopicPubsubArgs {
  /// Settings for ingestion from a data source into this topic.
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettings>?
      ingestionDataSourceSettings;

  /// The resource name of the Cloud KMS CryptoKey to be used to protect access
  /// to messages published on this topic. Your project's PubSub service account
  /// (`service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com`) must have
  /// `roles/cloudkms.cryptoKeyEncrypterDecrypter` to use this feature.
  /// The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final pulumi.Input<String>? kmsKeyName;

  /// A set of key/value label pairs to assign to this Topic.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Indicates the minimum duration to retain a message after it is published
  /// to the topic. If this field is set, messages published to the topic in
  /// the last messageRetentionDuration are always available to subscribers.
  /// For instance, it allows any attached subscription to seek to a timestamp
  /// that is up to messageRetentionDuration in the past. If this field is not
  /// set, message retention is controlled by settings on individual subscriptions.
  /// The rotation period has the format of a decimal number, followed by the
  /// letter `s` (seconds). Cannot be more than 31 days or less than 10 minutes.
  final pulumi.Input<String>? messageRetentionDuration;

  /// Policy constraining the set of Google Cloud Platform regions where
  /// messages published to the topic may be stored. If not present, then no
  /// constraints are in effect.
  /// Structure is documented below.
  final pulumi.Input<TopicMessageStoragePolicy>? messageStoragePolicy;

  /// Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// order specified.
  /// Structure is documented below.
  final pulumi.Input<List<TopicMessageTransform>>? messageTransforms;

  /// Name of the topic.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Settings for validating messages published against a schema.
  /// Structure is documented below.
  final pulumi.Input<TopicSchemaSettings>? schemaSettings;

  /// Input only. Resource manager tags to be bound to the topic. Tag keys and
  /// values have the same definition as resource manager tags. Keys must be in
  /// the format tagKeys/{tag_key_id}, and values are in the format
  /// tagValues/456. The field is ignored when empty. The field is immutable and
  /// causes resource replacement when mutated. This field is only set at create
  /// time and modifying this field after creation will trigger recreation. To
  /// apply tags to an existing resource, see the `gcp.tags.TagValue`
  /// resource.
  final pulumi.Input<Map<String, String>>? tags;

  TopicPubsubArgs({
    this.ingestionDataSourceSettings,
    this.kmsKeyName,
    this.labels,
    this.messageRetentionDuration,
    this.messageStoragePolicy,
    this.messageTransforms,
    this.name,
    this.project,
    this.schemaSettings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ingestionDataSourceSettingsValue = ingestionDataSourceSettings;
    if (ingestionDataSourceSettingsValue != null) {
      map['ingestionDataSourceSettings'] = pulumi.Input.mapOptionalInputValue<
              TopicIngestionDataSourceSettings, Map<String, dynamic>>(
          ingestionDataSourceSettingsValue, (value) => value.toMap());
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final messageRetentionDurationValue = messageRetentionDuration;
    if (messageRetentionDurationValue != null) {
      map['messageRetentionDuration'] = messageRetentionDurationValue;
    }
    final messageStoragePolicyValue = messageStoragePolicy;
    if (messageStoragePolicyValue != null) {
      map['messageStoragePolicy'] = pulumi.Input.mapOptionalInputValue<
              TopicMessageStoragePolicy, Map<String, dynamic>>(
          messageStoragePolicyValue, (value) => value.toMap());
    }
    final messageTransformsValue = messageTransforms;
    if (messageTransformsValue != null) {
      map['messageTransforms'] = pulumi.Input.mapOptionalInputValue<
              List<TopicMessageTransform>, List<Map<String, dynamic>>>(
          messageTransformsValue,
          (value) => pulumi.Input.encodeList<TopicMessageTransform,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final schemaSettingsValue = schemaSettings;
    if (schemaSettingsValue != null) {
      map['schemaSettings'] = pulumi.Input.mapOptionalInputValue<
          TopicSchemaSettings,
          Map<String, dynamic>>(schemaSettingsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TopicPubsubArgs.fromMap(Map<String, dynamic> map) {
    return TopicPubsubArgs(
      ingestionDataSourceSettings:
          pulumi.Input.asOptionalInput<TopicIngestionDataSourceSettings>(
              map['ingestionDataSourceSettings']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      messageRetentionDuration:
          pulumi.Input.asOptionalInput<String>(map['messageRetentionDuration']),
      messageStoragePolicy:
          pulumi.Input.asOptionalInput<TopicMessageStoragePolicy>(
              map['messageStoragePolicy']),
      messageTransforms:
          pulumi.Input.asOptionalInput<List<TopicMessageTransform>>(
              map['messageTransforms']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schemaSettings: pulumi.Input.asOptionalInput<TopicSchemaSettings>(
          map['schemaSettings']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
