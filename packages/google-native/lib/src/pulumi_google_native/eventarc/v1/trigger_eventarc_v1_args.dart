// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_eventarc_v1.dart';
import 'event_filter_eventarc_v1.dart';
import 'transport.dart';

/// The set of arguments for Trigger.
class TriggerEventarcV1Args {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final pulumi.Input<String>? channel;

  /// Destination specifies where the events should be sent to.
  final pulumi.Input<DestinationEventarcV1> destination;

  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  final pulumi.Input<String>? eventDataContentType;

  /// Unordered list. The list of filters that applies to event attributes. Only events that match all the provided filters are sent to the destination.
  final pulumi.Input<List<EventFilterEventarcV1>> eventFilters;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name of the trigger. Must be unique within the location of the project and must be in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The `iam.serviceAccounts.actAs` permission must be granted on the service account to allow a principal to impersonate the service account. For more information, see the [Roles and permissions](/eventarc/docs/all-roles-permissions) page specific to the trigger destination.
  final pulumi.Input<String>? serviceAccount;

  /// Optional. To deliver messages, Eventarc might use other Google Cloud products as a transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  final pulumi.Input<Transport>? transport;

  /// Required. The user-provided ID to be assigned to the trigger.
  final pulumi.Input<String> triggerId;

  TriggerEventarcV1Args({
    this.channel,
    required this.destination,
    this.eventDataContentType,
    required this.eventFilters,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serviceAccount,
    this.transport,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelValue = channel;
    if (channelValue != null) {
      map['channel'] = channelValue;
    }
    map['destination'] =
        pulumi.Input.mapInputValue<DestinationEventarcV1, Map<String, dynamic>>(
            destination, (value) => value.toMap());
    final eventDataContentTypeValue = eventDataContentType;
    if (eventDataContentTypeValue != null) {
      map['eventDataContentType'] = eventDataContentTypeValue;
    }
    map['eventFilters'] = pulumi.Input.mapInputValue<
            List<EventFilterEventarcV1>, List<Map<String, dynamic>>>(
        eventFilters,
        (value) => pulumi.Input.encodeList<EventFilterEventarcV1,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final transportValue = transport;
    if (transportValue != null) {
      map['transport'] =
          pulumi.Input.mapOptionalInputValue<Transport, Map<String, dynamic>>(
              transportValue, (value) => value.toMap());
    }
    map['triggerId'] = triggerId;
    return map;
  }

  factory TriggerEventarcV1Args.fromMap(Map<String, dynamic> map) {
    return TriggerEventarcV1Args(
      channel: pulumi.Input.asOptionalInput<String>(map['channel']),
      destination:
          pulumi.Input.asInput<DestinationEventarcV1>(map['destination']),
      eventDataContentType:
          pulumi.Input.asOptionalInput<String>(map['eventDataContentType']),
      eventFilters: pulumi.Input.asInput<List<EventFilterEventarcV1>>(
          map['eventFilters']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      transport: pulumi.Input.asOptionalInput<Transport>(map['transport']),
      triggerId: pulumi.Input.asInput<String>(map['triggerId']),
    );
  }
}
