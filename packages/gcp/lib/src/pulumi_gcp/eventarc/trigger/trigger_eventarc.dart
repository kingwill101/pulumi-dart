import 'package:pulumi/pulumi.dart' as pulumi;
import '../trigger_destination/trigger_destination.dart';
import '../trigger_matching_criteria/trigger_matching_criteria.dart';
import '../trigger_retry_policy/trigger_retry_policy.dart';
import '../trigger_transport/trigger_transport.dart';
import 'trigger_eventarc_args.dart';

/// The Eventarc Trigger resource
///
///
/// To get more information about Trigger, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.triggers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/standard/docs/overview#eventarc-triggers)
///
/// ## Example Usage
///
/// ### Eventarc Trigger With Cloud Run Destination
///
///
///
///
/// ## Import
///
/// Trigger can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/triggers/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Trigger can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/trigger:Trigger default projects/{{project}}/locations/{{location}}/triggers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/trigger:Trigger default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/trigger:Trigger default {{location}}/{{name}}
/// ```
class TriggerEventarc extends pulumi.CustomResource {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  late final pulumi.Output<String?> channel;

  /// Output only. The reason(s) why a trigger is in FAILED state.
  late final pulumi.Output<Map<String, String>> conditions;

  /// Output only. The creation time.
  late final pulumi.Output<String> createTime;

  /// Required. Destination specifies where the events should be sent to.
  /// Structure is documented below.
  late final pulumi.Output<TriggerDestination> destination;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Output only. This checksum is computed by the server based on the value of other fields, and may be sent only on create requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  late final pulumi.Output<String> eventDataContentType;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination.
  /// Structure is documented below.
  late final pulumi.Output<List<TriggerMatchingCriteria>> matchingCriterias;

  /// Required. The resource name of the trigger. Must be unique within the location on the project.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The retry policy configuration for the Trigger.
  /// Can only be set with Cloud Run destinations.
  /// Structure is documented below.
  late final pulumi.Output<TriggerRetryPolicy?> retryPolicy;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role.
  late final pulumi.Output<String?> serviceAccount;

  /// Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  /// Structure is documented below.
  late final pulumi.Output<TriggerTransport> transport;

  /// Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;

  /// Output only. The last-modified time.
  late final pulumi.Output<String> updateTime;

  TriggerEventarc(
    String name, {
    TriggerEventarcArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/trigger:Trigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.channel = registerOutput<String?>('channel');
    this.conditions = registerOutput<Map<String, String>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.destination = registerOutput<TriggerDestination>('destination');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.eventDataContentType = registerOutput<String>('eventDataContentType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.matchingCriterias =
        registerOutput<List<TriggerMatchingCriteria>>('matchingCriterias');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.retryPolicy = registerOutput<TriggerRetryPolicy?>('retryPolicy');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.transport = registerOutput<TriggerTransport>('transport');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
