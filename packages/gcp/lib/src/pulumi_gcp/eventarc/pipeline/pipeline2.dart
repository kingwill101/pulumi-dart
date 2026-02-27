import 'package:pulumi/pulumi.dart';
import '../pipeline_destination/pipeline_destination.dart';
import '../pipeline_input_payload_format/pipeline_input_payload_format.dart';
import '../pipeline_logging_config/pipeline_logging_config.dart';
import '../pipeline_mediation/pipeline_mediation.dart';
import '../pipeline_retry_policy/pipeline_retry_policy.dart';
import 'pipeline_args2.dart';

/// The Eventarc Pipeline resource
///
///
/// To get more information about Pipeline, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.pipelines)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/advanced/docs/receive-events/create-enrollment)
///
/// ## Example Usage
///
/// ### Eventarc Pipeline With Topic Destination
///
///
///
/// ### Eventarc Pipeline With Http Destination
///
///
///
/// ### Eventarc Pipeline With Workflow Destination
///
///
///
/// ### Eventarc Pipeline With Oidc And Json Format
///
///
///
/// ### Eventarc Pipeline With Oauth And Protobuf Format
///
///
///
/// ### Eventarc Pipeline With Cmek And Avro Format
///
///
///
///
/// ## Import
///
/// Pipeline can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/pipelines/{{pipeline_id}}`
///
/// * `{{project}}/{{location}}/{{pipeline_id}}`
///
/// * `{{location}}/{{pipeline_id}}`
///
/// When using the `pulumi import` command, Pipeline can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/pipeline:Pipeline default projects/{{project}}/locations/{{location}}/pipelines/{{pipeline_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/pipeline:Pipeline default {{project}}/{{location}}/{{pipeline_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/pipeline:Pipeline default {{location}}/{{pipeline_id}}
/// ```
class Pipeline2 extends CustomResource {
  /// User-defined annotations. See https://google.aip.dev/128#annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// The creation time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt the event data. If not set, an internal Google-owned key
  /// will be used to encrypt messages. It must match the pattern
  /// "projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}".
  late final Output<String?> cryptoKeyName;

  /// List of destinations to which messages will be forwarded. Currently,
  /// exactly one destination is supported per Pipeline.
  /// Structure is documented below.
  late final Output<List<PipelineDestination>> destinations;

  /// Display name of resource.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of
  /// other fields, and might be sent only on create requests to ensure that the
  /// client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Represents the format of message data.
  /// Structure is documented below.
  late final Output<PipelineInputPayloadFormat?> inputPayloadFormat;

  /// User labels attached to the Pipeline that can be used to group
  /// resources. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  late final Output<PipelineLoggingConfig> loggingConfig;

  /// List of mediation operations to be performed on the message. Currently,
  /// only one Transformation operation is allowed in each Pipeline.
  /// Structure is documented below.
  late final Output<List<PipelineMediation>?> mediations;

  /// The resource name of the Pipeline. Must be unique within the
  /// location of the project and must be in
  /// `projects/{project}/locations/{location}/pipelines/{pipeline}` format.
  late final Output<String> name;

  /// The user-provided ID to be assigned to the Pipeline. It should match the
  /// format `^a-z?$`.
  late final Output<String> pipelineId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The retry policy configuration for the Pipeline. The pipeline
  /// exponentially backs off in case the destination is non responsive or
  /// returns a retryable error code. The default semantics are as follows:
  /// The backoff starts with a 5 second delay and doubles the
  /// delay after each failed attempt (10 seconds, 20 seconds, 40 seconds, etc.).
  /// The delay is capped at 60 seconds by default.
  /// Please note that if you set the min_retry_delay and max_retry_delay fields
  /// to the same value this will make the duration between retries constant.
  /// Structure is documented below.
  late final Output<PipelineRetryPolicy> retryPolicy;

  /// Server-assigned unique identifier for the Pipeline. The value
  /// is a UUID4 string and guaranteed to remain unchanged until the resource is
  /// deleted.
  late final Output<String> uid;

  /// The last-modified time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  Pipeline2(
    String name, {
    PipelineArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/pipeline:Pipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.destinations =
        registerOutput<List<PipelineDestination>>('destinations');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.inputPayloadFormat =
        registerOutput<PipelineInputPayloadFormat?>('inputPayloadFormat');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.loggingConfig = registerOutput<PipelineLoggingConfig>('loggingConfig');
    this.mediations = registerOutput<List<PipelineMediation>?>('mediations');
    this.name = registerOutput<String>('name');
    this.pipelineId = registerOutput<String>('pipelineId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.retryPolicy = registerOutput<PipelineRetryPolicy>('retryPolicy');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
