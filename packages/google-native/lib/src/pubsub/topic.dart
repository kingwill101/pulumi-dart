import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_storage_policy_response.dart';
import 'schema_settings_response.dart';
import 'topic_args.dart';

/// Creates the given topic with the given name. See the [resource name rules] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).
class Topic extends pulumi.CustomResource {
  /// Optional. The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String> kmsKeyName;

  /// Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  late final pulumi.Output<Map<String, String>> labels;

  /// Optional. Indicates the minimum duration to retain a message after it is published to the topic. If this field is set, messages published to the topic in the last `message_retention_duration` are always available to subscribers. For instance, it allows any attached subscription to [seek to a timestamp](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) that is up to `message_retention_duration` in the past. If this field is not set, message retention is controlled by settings on individual subscriptions. Cannot be more than 31 days or less than 10 minutes.
  late final pulumi.Output<String> messageRetentionDuration;

  /// Optional. Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.
  late final pulumi.Output<MessageStoragePolicyResponse> messageStoragePolicy;

  /// The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  late final pulumi.Output<bool> satisfiesPzs;

  /// Optional. Settings for validating messages published against a schema.
  late final pulumi.Output<SchemaSettingsResponse> schemaSettings;
  late final pulumi.Output<String> topicId;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_pubsub_v1_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(String name, {TopicArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:pubsub/v1:Topic',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.messageRetentionDuration = registerOutput<String>(
      'messageRetentionDuration',
    );
    this.messageStoragePolicy = registerOutput<MessageStoragePolicyResponse>(
      'messageStoragePolicy',
    );
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.schemaSettings = registerOutput<SchemaSettingsResponse>(
      'schemaSettings',
    );
    this.topicId = registerOutput<String>('topicId');
  }
}
