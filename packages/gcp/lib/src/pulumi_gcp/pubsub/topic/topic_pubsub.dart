import 'package:pulumi/pulumi.dart' as pulumi;
import '../topic_ingestion_data_source_settings/topic_ingestion_data_source_settings.dart';
import '../topic_message_storage_policy/topic_message_storage_policy.dart';
import '../topic_message_transform/topic_message_transform.dart';
import '../topic_schema_settings/topic_schema_settings.dart';
import 'topic_pubsub_args.dart';

/// A named resource to which messages are sent by publishers.
///
///
/// To get more information about Topic, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics)
/// * How-to Guides
/// * [Managing Topics](https://cloud.google.com/pubsub/docs/admin#managing_topics)
///
/// > **Note:** You can retrieve the email of the Google Managed Pub/Sub Service Account used for forwarding
/// by using the `gcp.projects.ServiceIdentity` resource.
///
/// ## Example Usage
///
/// ### Pubsub Topic Basic
///
///
///
/// ### Pubsub Topic Cmek
///
///
///
/// ### Pubsub Topic Geo Restricted
///
///
///
/// ### Pubsub Topic Schema Settings
///
///
///
/// ### Pubsub Topic Ingestion Kinesis
///
///
///
/// ### Pubsub Topic Ingestion Cloud Storage
///
///
///
/// ### Pubsub Topic Ingestion Azure Event Hubs
///
///
///
/// ### Pubsub Topic Ingestion Aws Msk
///
///
///
/// ### Pubsub Topic Ingestion Confluent Cloud
///
///
///
/// ### Pubsub Topic Single Smt
///
///
///
/// ### Pubsub Topic Multiple Smts
///
///
///
/// ### Pubsub Topic Tags
///
///
///
///
/// ## Import
///
/// Topic can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/topics/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Topic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/topic:Topic default projects/{{project}}/topics/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/topic:Topic default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/topic:Topic default {{name}}
/// ```
class TopicPubsub extends pulumi.CustomResource {
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Settings for ingestion from a data source into this topic.
  /// Structure is documented below.
  late final pulumi.Output<TopicIngestionDataSourceSettings?>
      ingestionDataSourceSettings;

  /// The resource name of the Cloud KMS CryptoKey to be used to protect access
  /// to messages published on this topic. Your project's PubSub service account
  /// (`service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com`) must have
  /// `roles/cloudkms.cryptoKeyEncrypterDecrypter` to use this feature.
  /// The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  late final pulumi.Output<String?> kmsKeyName;

  /// A set of key/value label pairs to assign to this Topic.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Indicates the minimum duration to retain a message after it is published
  /// to the topic. If this field is set, messages published to the topic in
  /// the last messageRetentionDuration are always available to subscribers.
  /// For instance, it allows any attached subscription to seek to a timestamp
  /// that is up to messageRetentionDuration in the past. If this field is not
  /// set, message retention is controlled by settings on individual subscriptions.
  /// The rotation period has the format of a decimal number, followed by the
  /// letter `s` (seconds). Cannot be more than 31 days or less than 10 minutes.
  late final pulumi.Output<String?> messageRetentionDuration;

  /// Policy constraining the set of Google Cloud Platform regions where
  /// messages published to the topic may be stored. If not present, then no
  /// constraints are in effect.
  /// Structure is documented below.
  late final pulumi.Output<TopicMessageStoragePolicy> messageStoragePolicy;

  /// Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// order specified.
  /// Structure is documented below.
  late final pulumi.Output<List<TopicMessageTransform>?> messageTransforms;

  /// Name of the topic.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Settings for validating messages published against a schema.
  /// Structure is documented below.
  late final pulumi.Output<TopicSchemaSettings?> schemaSettings;

  /// Input only. Resource manager tags to be bound to the topic. Tag keys and
  /// values have the same definition as resource manager tags. Keys must be in
  /// the format tagKeys/{tag_key_id}, and values are in the format
  /// tagValues/456. The field is ignored when empty. The field is immutable and
  /// causes resource replacement when mutated. This field is only set at create
  /// time and modifying this field after creation will trigger recreation. To
  /// apply tags to an existing resource, see the `gcp.tags.TagValue`
  /// resource.
  late final pulumi.Output<Map<String, String>?> tags;

  TopicPubsub(
    String name, {
    TopicPubsubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ingestionDataSourceSettings =
        registerOutput<TopicIngestionDataSourceSettings?>(
            'ingestionDataSourceSettings');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.messageRetentionDuration =
        registerOutput<String?>('messageRetentionDuration');
    this.messageStoragePolicy =
        registerOutput<TopicMessageStoragePolicy>('messageStoragePolicy');
    this.messageTransforms =
        registerOutput<List<TopicMessageTransform>?>('messageTransforms');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.schemaSettings =
        registerOutput<TopicSchemaSettings?>('schemaSettings');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
