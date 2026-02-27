import 'package:pulumi/pulumi.dart';
import '../stream_backfill_all/stream_backfill_all.dart';
import '../stream_destination_config/stream_destination_config.dart';
import '../stream_rule_set/stream_rule_set.dart';
import '../stream_source_config/stream_source_config.dart';
import 'stream_args.dart';

/// A resource representing streaming data from a source to a destination.
///
///
/// To get more information about Stream, see:
///
/// * [API documentation](https://cloud.google.com/datastream/docs/reference/rest/v1/projects.locations.streams)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/datastream/docs/create-a-stream)
///
/// ## Example Usage
///
/// ### Datastream Stream Full
///
///
///
/// ### Datastream Stream Postgresql
///
///
///
/// ### Datastream Stream Oracle
///
///
///
/// ### Datastream Stream Sql Server
///
///
///
/// ### Datastream Stream Sql Server Change Tables
///
///
///
/// ### Datastream Stream Mysql Gtid
///
///
///
/// ### Datastream Stream Postgresql Bigquery Dataset Id
///
///
///
/// ### Datastream Stream Bigquery
///
///
///
/// ### Datastream Stream Bigquery Cross Project Source Hierachy
///
///
///
/// ### Datastream Stream Bigquery Append Only
///
///
///
/// ### Datastream Stream Bigquery Blmt
///
///
///
/// ### Datastream Stream Rule Sets Bigquery
///
///
///
/// ### Datastream Stream Mongodb
///
///
///
///
/// ## Import
///
/// Stream can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/streams/{{stream_id}}`
///
/// * `{{project}}/{{location}}/{{stream_id}}`
///
/// * `{{location}}/{{stream_id}}`
///
/// When using the `pulumi import` command, Stream can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datastream/stream:Stream default projects/{{project}}/locations/{{location}}/streams/{{stream_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:datastream/stream:Stream default {{project}}/{{location}}/{{stream_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:datastream/stream:Stream default {{location}}/{{stream_id}}
/// ```
class Stream extends CustomResource {
  /// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
  /// Structure is documented below.
  late final Output<StreamBackfillAll?> backfillAll;

  /// Backfill strategy to disable automatic backfill for the Stream's objects.
  late final Output<Map<String, dynamic>?> backfillNone;

  /// Create the stream without validating it.
  late final Output<bool?> createWithoutValidation;

  /// A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data
  /// will be encrypted using an internal Stream-specific encryption key provisioned through KMS.
  late final Output<String?> customerManagedEncryptionKey;

  /// Desired state of the Stream. Set this field to `RUNNING` to start the stream,
  /// `NOT_STARTED` to create the stream without starting and `PAUSED` to pause
  /// the stream from a `RUNNING` state.
  /// Possible values: NOT_STARTED, RUNNING, PAUSED. Default: NOT_STARTED
  late final Output<String?> desiredState;

  /// Destination connection profile configuration.
  /// Structure is documented below.
  late final Output<StreamDestinationConfig> destinationConfig;

  /// Display name.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the location this stream is located in.
  late final Output<String> location;

  /// The stream's name.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Rule sets to apply to the stream.
  /// Structure is documented below.
  late final Output<List<StreamRuleSet>?> ruleSets;

  /// Source connection profile configuration.
  /// Structure is documented below.
  late final Output<StreamSourceConfig> sourceConfig;

  /// The state of the stream.
  late final Output<String> state;

  /// The stream identifier.
  late final Output<String> streamId;

  Stream(
    String name, {
    StreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datastream/stream:Stream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backfillAll = registerOutput<StreamBackfillAll?>('backfillAll');
    this.backfillNone = registerOutput<Map<String, dynamic>?>('backfillNone');
    this.createWithoutValidation =
        registerOutput<bool?>('createWithoutValidation');
    this.customerManagedEncryptionKey =
        registerOutput<String?>('customerManagedEncryptionKey');
    this.desiredState = registerOutput<String?>('desiredState');
    this.destinationConfig =
        registerOutput<StreamDestinationConfig>('destinationConfig');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.ruleSets = registerOutput<List<StreamRuleSet>?>('ruleSets');
    this.sourceConfig = registerOutput<StreamSourceConfig>('sourceConfig');
    this.state = registerOutput<String>('state');
    this.streamId = registerOutput<String>('streamId');
  }
}
