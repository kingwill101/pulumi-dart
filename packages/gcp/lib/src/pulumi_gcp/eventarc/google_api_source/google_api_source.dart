import 'package:pulumi/pulumi.dart';
import '../google_api_source_logging_config/google_api_source_logging_config.dart';
import 'google_api_source_args.dart';

/// The Eventarc GoogleApiSource resource
///
///
/// To get more information about GoogleApiSource, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.googleApiSources)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/advanced/docs/publish-events/publish-events-google-sources)
///
/// ## Example Usage
///
/// ### Eventarc Google Api Source With Cmek
///
///
///
///
/// ## Import
///
/// GoogleApiSource can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/googleApiSources/{{google_api_source_id}}`
///
/// * `{{project}}/{{location}}/{{google_api_source_id}}`
///
/// * `{{location}}/{{google_api_source_id}}`
///
/// When using the `pulumi import` command, GoogleApiSource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleApiSource:GoogleApiSource default projects/{{project}}/locations/{{location}}/googleApiSources/{{google_api_source_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleApiSource:GoogleApiSource default {{project}}/{{location}}/{{google_api_source_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/googleApiSource:GoogleApiSource default {{location}}/{{google_api_source_id}}
/// ```
class GoogleApiSource extends CustomResource {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// The creation time.
  late final Output<String> createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final Output<String?> cryptoKeyName;

  /// Destination is the message bus that the GoogleApiSource is delivering to.
  /// It must be point to the full resource name of a MessageBus. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
  late final Output<String> destination;

  /// Resource display name.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// The user-provided ID to be assigned to the GoogleApiSource. It should match
  /// the format `^a-z?$`.
  late final Output<String> googleApiSourceId;

  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  late final Output<GoogleApiSourceLoggingConfig> loggingConfig;

  /// Resource name of the form
  /// projects/{project}/locations/{location}/googleApiSources/{google_api_source}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  late final Output<String> uid;

  /// The last-modified time.
  late final Output<String> updateTime;

  GoogleApiSource(
    String name, {
    GoogleApiSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/googleApiSource:GoogleApiSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.destination = registerOutput<String>('destination');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.googleApiSourceId = registerOutput<String>('googleApiSourceId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.loggingConfig =
        registerOutput<GoogleApiSourceLoggingConfig>('loggingConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
