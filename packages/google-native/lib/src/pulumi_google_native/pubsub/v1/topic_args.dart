// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_storage_policy.dart';
import 'schema_settings.dart';

/// The set of arguments for Topic.
class TopicArgs {
  /// Optional. The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? kmsKeyName;

  /// Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. Indicates the minimum duration to retain a message after it is published to the topic. If this field is set, messages published to the topic in the last `message_retention_duration` are always available to subscribers. For instance, it allows any attached subscription to [seek to a timestamp](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) that is up to `message_retention_duration` in the past. If this field is not set, message retention is controlled by settings on individual subscriptions. Cannot be more than 31 days or less than 10 minutes.
  final pulumi.Input<String>? messageRetentionDuration;

  /// Optional. Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.
  final pulumi.Input<MessageStoragePolicy>? messageStoragePolicy;

  /// The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  final pulumi.Input<bool>? satisfiesPzs;

  /// Optional. Settings for validating messages published against a schema.
  final pulumi.Input<SchemaSettings>? schemaSettings;
  final pulumi.Input<String> topicId;

  TopicArgs({
    this.kmsKeyName,
    this.labels,
    this.messageRetentionDuration,
    this.messageStoragePolicy,
    this.name,
    this.project,
    this.satisfiesPzs,
    this.schemaSettings,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
              MessageStoragePolicy, Map<String, dynamic>>(
          messageStoragePolicyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final satisfiesPzsValue = satisfiesPzs;
    if (satisfiesPzsValue != null) {
      map['satisfiesPzs'] = satisfiesPzsValue;
    }
    final schemaSettingsValue = schemaSettings;
    if (schemaSettingsValue != null) {
      map['schemaSettings'] = pulumi.Input.mapOptionalInputValue<SchemaSettings,
          Map<String, dynamic>>(schemaSettingsValue, (value) => value.toMap());
    }
    map['topicId'] = topicId;
    return map;
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      messageRetentionDuration:
          pulumi.Input.asOptionalInput<String>(map['messageRetentionDuration']),
      messageStoragePolicy: pulumi.Input.asOptionalInput<MessageStoragePolicy>(
          map['messageStoragePolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      satisfiesPzs: pulumi.Input.asOptionalInput<bool>(map['satisfiesPzs']),
      schemaSettings:
          pulumi.Input.asOptionalInput<SchemaSettings>(map['schemaSettings']),
      topicId: pulumi.Input.asInput<String>(map['topicId']),
    );
  }
}
