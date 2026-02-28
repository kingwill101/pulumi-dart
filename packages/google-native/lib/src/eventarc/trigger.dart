import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response.dart';
import 'event_filter_response.dart';
import 'transport_response.dart';
import 'trigger_args.dart';

/// Create a new trigger in a particular project and location.
class Trigger extends pulumi.CustomResource {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  late final pulumi.Output<String> channel;
  /// The reason(s) why a trigger is in FAILED state.
  late final pulumi.Output<Map<String, String>> conditions;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// Destination specifies where the events should be sent to.
  late final pulumi.Output<DestinationResponse> destination;
  /// This checksum is computed by the server based on the value of other fields, and might be sent only on create requests to ensure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  late final pulumi.Output<String> eventDataContentType;
  /// Unordered list. The list of filters that applies to event attributes. Only events that match all the provided filters are sent to the destination.
  late final pulumi.Output<List<EventFilterResponse>> eventFilters;
  /// Optional. User labels attached to the triggers that can be used to group resources.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource name of the trigger. Must be unique within the location of the project and must be in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The `iam.serviceAccounts.actAs` permission must be granted on the service account to allow a principal to impersonate the service account. For more information, see the [Roles and permissions](/eventarc/docs/all-roles-permissions) page specific to the trigger destination.
  late final pulumi.Output<String> serviceAccount;
  /// Optional. To deliver messages, Eventarc might use other Google Cloud products as a transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  late final pulumi.Output<TransportResponse> transport;
  /// Required. The user-provided ID to be assigned to the trigger.
  late final pulumi.Output<String> triggerId;
  /// Server-assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;
  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_eventarc_v1_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:eventarc/v1:Trigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.channel = registerOutput<String>('channel');
    this.conditions = registerOutput<Map<String, String>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.destination = registerOutput<DestinationResponse>('destination');
    this.etag = registerOutput<String>('etag');
    this.eventDataContentType = registerOutput<String>('eventDataContentType');
    this.eventFilters = registerOutput<List<EventFilterResponse>>('eventFilters');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.transport = registerOutput<TransportResponse>('transport');
    this.triggerId = registerOutput<String>('triggerId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
