// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response.dart';
import 'event_filter_response.dart';
import 'transport_response.dart';

/// Result data returned by getTrigger.
class GetTriggerResult {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final String channel;

  /// The reason(s) why a trigger is in FAILED state.
  final Map<String, String> conditions;

  /// The creation time.
  final String createTime;

  /// Destination specifies where the events should be sent to.
  final DestinationResponse destination;

  /// This checksum is computed by the server based on the value of other fields, and might be sent only on create requests to ensure that the client has an up-to-date value before proceeding.
  final String etag;

  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  final String eventDataContentType;

  /// Unordered list. The list of filters that applies to event attributes. Only events that match all the provided filters are sent to the destination.
  final List<EventFilterResponse> eventFilters;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  final Map<String, String> labels;

  /// The resource name of the trigger. Must be unique within the location of the project and must be in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  final String name;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The `iam.serviceAccounts.actAs` permission must be granted on the service account to allow a principal to impersonate the service account. For more information, see the [Roles and permissions](/eventarc/docs/all-roles-permissions) page specific to the trigger destination.
  final String serviceAccount;

  /// Optional. To deliver messages, Eventarc might use other Google Cloud products as a transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  final TransportResponse transport;

  /// Server-assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final String uid;

  /// The last-modified time.
  final String updateTime;

  /// Creates a new [GetTriggerResult].
  /// [channel] Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  /// [conditions] The reason(s) why a trigger is in FAILED state.
  /// [createTime] The creation time.
  /// [destination] Destination specifies where the events should be sent to.
  /// [etag] This checksum is computed by the server based on the value of other fields, and might be sent only on create requests to ensure that the client has an up-to-date value before proceeding.
  /// [eventDataContentType] Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  /// [eventFilters] Unordered list. The list of filters that applies to event attributes. Only events that match all the provided filters are sent to the destination.
  /// [labels] Optional. User labels attached to the triggers that can be used to group resources.
  /// [name] The resource name of the trigger. Must be unique within the location of the project and must be in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  /// [serviceAccount] Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The `iam.serviceAccounts.actAs` permission must be granted on the service account to allow a principal to impersonate the service account. For more information, see the [Roles and permissions](/eventarc/docs/all-roles-permissions) page specific to the trigger destination.
  /// [transport] Optional. To deliver messages, Eventarc might use other Google Cloud products as a transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  /// [uid] Server-assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  GetTriggerResult({
    required this.channel,
    required this.conditions,
    required this.createTime,
    required this.destination,
    required this.etag,
    required this.eventDataContentType,
    required this.eventFilters,
    required this.labels,
    required this.name,
    required this.serviceAccount,
    required this.transport,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channel'] = channel;
    map['conditions'] = conditions;
    map['createTime'] = createTime;
    map['destination'] = destination.toMap();
    map['etag'] = etag;
    map['eventDataContentType'] = eventDataContentType;
    map['eventFilters'] =
        pulumi.Input.encodeList<EventFilterResponse, Map<String, dynamic>>(
            eventFilters, (value) => value.toMap());
    map['labels'] = labels;
    map['name'] = name;
    map['serviceAccount'] = serviceAccount;
    map['transport'] = transport.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetTriggerResult(
      channel: map['channel'] as String,
      conditions: (map['conditions'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      destination: DestinationResponse.fromMap(
          (map['destination'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      eventDataContentType: map['eventDataContentType'] as String,
      eventFilters: pulumi.Input.decodeList<EventFilterResponse>(
          map['eventFilters'],
          (value) => EventFilterResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      serviceAccount: map['serviceAccount'] as String,
      transport: TransportResponse.fromMap(
          (map['transport'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
