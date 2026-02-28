// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_storage_policy.dart';
import 'schema_settings.dart';

/// {@template pulumi_pubsub_v1_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_topic_args_doc}
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

  /// Creates a new [TopicArgs].
  /// [kmsKeyName] Optional. The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [labels] Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  /// [messageRetentionDuration] Optional. Indicates the minimum duration to retain a message after it is published to the topic. If this field is set, messages published to the topic in the last `message_retention_duration` are always available to subscribers. For instance, it allows any attached subscription to [seek to a timestamp](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) that is up to `message_retention_duration` in the past. If this field is not set, message retention is controlled by settings on individual subscriptions. Cannot be more than 31 days or less than 10 minutes.
  /// [messageStoragePolicy] Optional. Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.
  /// [name] The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  /// [project] Optional.
  /// [satisfiesPzs] Optional. Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  /// [schemaSettings] Optional. Settings for validating messages published against a schema.
  /// [topicId] Required.
  TopicArgs({
    String? kmsKeyName,
    Map<String, String>? labels,
    String? messageRetentionDuration,
    MessageStoragePolicy? messageStoragePolicy,
    String? name,
    String? project,
    bool? satisfiesPzs,
    SchemaSettings? schemaSettings,
    required String topicId,
  }) :
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      messageRetentionDuration = pulumi.Input.asOptionalInput<String>(messageRetentionDuration),
      messageStoragePolicy = pulumi.Input.asOptionalInput<MessageStoragePolicy>(messageStoragePolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      satisfiesPzs = pulumi.Input.asOptionalInput<bool>(satisfiesPzs),
      schemaSettings = pulumi.Input.asOptionalInput<SchemaSettings>(schemaSettings),
      topicId = pulumi.Input.asInput<String>(topicId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'messageRetentionDuration': ?messageRetentionDuration,
      'messageStoragePolicy': ?pulumi.Input.mapOptionalInputValue<MessageStoragePolicy, Map<String, dynamic>>(messageStoragePolicy, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'satisfiesPzs': ?satisfiesPzs,
      'schemaSettings': ?pulumi.Input.mapOptionalInputValue<SchemaSettings, Map<String, dynamic>>(schemaSettings, (value) => value.toMap()),
      'topicId': topicId,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      messageRetentionDuration: map['messageRetentionDuration'] == null ? null : map['messageRetentionDuration'] as String,
      messageStoragePolicy: map['messageStoragePolicy'] == null ? null : MessageStoragePolicy.fromMap((map['messageStoragePolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      satisfiesPzs: map['satisfiesPzs'] == null ? null : map['satisfiesPzs'] as bool,
      schemaSettings: map['schemaSettings'] == null ? null : SchemaSettings.fromMap((map['schemaSettings'] as Map).cast<String, dynamic>()),
      topicId: map['topicId'] as String,
    );
  }
}

