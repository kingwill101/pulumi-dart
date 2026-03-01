// ignore_for_file: unused_element, unnecessary_cast

import 'message_storage_policy_response.dart';
import 'schema_settings_response.dart';

/// Result data returned by getTopic.
class GetTopicResult {
  /// Optional. The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String kmsKeyName;

  /// Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  final Map<String, String> labels;

  /// Optional. Indicates the minimum duration to retain a message after it is published to the topic. If this field is set, messages published to the topic in the last `message_retention_duration` are always available to subscribers. For instance, it allows any attached subscription to [seek to a timestamp](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) that is up to `message_retention_duration` in the past. If this field is not set, message retention is controlled by settings on individual subscriptions. Cannot be more than 31 days or less than 10 minutes.
  final String messageRetentionDuration;

  /// Optional. Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.
  final MessageStoragePolicyResponse messageStoragePolicy;

  /// The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final String name;

  /// Optional. Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  final bool satisfiesPzs;

  /// Optional. Settings for validating messages published against a schema.
  final SchemaSettingsResponse schemaSettings;

  /// Creates a new [GetTopicResult].
  /// [kmsKeyName] Optional. The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [labels] Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  /// [messageRetentionDuration] Optional. Indicates the minimum duration to retain a message after it is published to the topic. If this field is set, messages published to the topic in the last `message_retention_duration` are always available to subscribers. For instance, it allows any attached subscription to [seek to a timestamp](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) that is up to `message_retention_duration` in the past. If this field is not set, message retention is controlled by settings on individual subscriptions. Cannot be more than 31 days or less than 10 minutes.
  /// [messageStoragePolicy] Optional. Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.
  /// [name] The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  /// [satisfiesPzs] Optional. Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  /// [schemaSettings] Optional. Settings for validating messages published against a schema.
  GetTopicResult({
    required this.kmsKeyName,
    required this.labels,
    required this.messageRetentionDuration,
    required this.messageStoragePolicy,
    required this.name,
    required this.satisfiesPzs,
    required this.schemaSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'labels': labels,
      'messageRetentionDuration': messageRetentionDuration,
      'messageStoragePolicy': messageStoragePolicy.toMap(),
      'name': name,
      'satisfiesPzs': satisfiesPzs,
      'schemaSettings': schemaSettings.toMap(),
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      messageRetentionDuration: map['messageRetentionDuration'] as String,
      messageStoragePolicy: MessageStoragePolicyResponse.fromMap(
        (map['messageStoragePolicy'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      schemaSettings: SchemaSettingsResponse.fromMap(
        (map['schemaSettings'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
