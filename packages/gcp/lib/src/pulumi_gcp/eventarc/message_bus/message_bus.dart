import 'package:pulumi/pulumi.dart' as pulumi;
import '../message_bus_logging_config/message_bus_logging_config.dart';
import 'message_bus_args.dart';

/// The Eventarc MessageBus resource
///
///
/// To get more information about MessageBus, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.messageBuses)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/advanced/docs/publish-events/create-bus)
///
/// ## Example Usage
///
/// ### Eventarc Message Bus With Cmek
///
///
///
///
/// ## Import
///
/// MessageBus can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/messageBuses/{{message_bus_id}}`
///
/// * `{{project}}/{{location}}/{{message_bus_id}}`
///
/// * `{{location}}/{{message_bus_id}}`
///
/// When using the `pulumi import` command, MessageBus can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/messageBus:MessageBus default projects/{{project}}/locations/{{location}}/messageBuses/{{message_bus_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/messageBus:MessageBus default {{project}}/{{location}}/{{message_bus_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/messageBus:MessageBus default {{location}}/{{message_bus_id}}
/// ```
class MessageBus extends pulumi.CustomResource {
  /// Optional. Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Output only. The creation time.
  late final pulumi.Output<String> createTime;

  /// Optional. Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  /// It must match the pattern
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String?> cryptoKeyName;

  /// Optional. Resource display name.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// The configuration for Platform Telemetry logging for Eventarc Advanced
  /// resources.
  /// Structure is documented below.
  late final pulumi.Output<MessageBusLoggingConfig> loggingConfig;

  /// Required. The user-provided ID to be assigned to the MessageBus. It should match the
  /// format `^a-z?$`.
  late final pulumi.Output<String> messageBusId;

  /// Identifier. Resource name of the form
  /// projects/{project}/locations/{location}/messageBuses/{message_bus}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;

  /// Output only. The last-modified time.
  late final pulumi.Output<String> updateTime;

  MessageBus(
    String name, {
    MessageBusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/messageBus:MessageBus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.loggingConfig =
        registerOutput<MessageBusLoggingConfig>('loggingConfig');
    this.messageBusId = registerOutput<String>('messageBusId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
