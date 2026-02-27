// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trigger_destination/trigger_destination.dart';
import '../trigger_matching_criteria/trigger_matching_criteria.dart';
import '../trigger_retry_policy/trigger_retry_policy.dart';
import '../trigger_transport/trigger_transport.dart';

/// The set of arguments for Trigger.
class TriggerEventarcArgs {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final pulumi.Input<String>? channel;

  /// Required. Destination specifies where the events should be sent to.
  /// Structure is documented below.
  final pulumi.Input<TriggerDestination> destination;

  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  final pulumi.Input<String>? eventDataContentType;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerMatchingCriteria>> matchingCriterias;

  /// Required. The resource name of the trigger. Must be unique within the location on the project.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The retry policy configuration for the Trigger.
  /// Can only be set with Cloud Run destinations.
  /// Structure is documented below.
  final pulumi.Input<TriggerRetryPolicy>? retryPolicy;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role.
  final pulumi.Input<String>? serviceAccount;

  /// Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  /// Structure is documented below.
  final pulumi.Input<TriggerTransport>? transport;

  TriggerEventarcArgs({
    this.channel,
    required this.destination,
    this.eventDataContentType,
    this.labels,
    required this.location,
    required this.matchingCriterias,
    this.name,
    this.project,
    this.retryPolicy,
    this.serviceAccount,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelValue = channel;
    if (channelValue != null) {
      map['channel'] = channelValue;
    }
    map['destination'] =
        pulumi.Input.mapInputValue<TriggerDestination, Map<String, dynamic>>(
            destination, (value) => value.toMap());
    final eventDataContentTypeValue = eventDataContentType;
    if (eventDataContentTypeValue != null) {
      map['eventDataContentType'] = eventDataContentTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['matchingCriterias'] = pulumi.Input.mapInputValue<
            List<TriggerMatchingCriteria>, List<Map<String, dynamic>>>(
        matchingCriterias,
        (value) => pulumi.Input.encodeList<TriggerMatchingCriteria,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = pulumi.Input.mapOptionalInputValue<
          TriggerRetryPolicy,
          Map<String, dynamic>>(retryPolicyValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final transportValue = transport;
    if (transportValue != null) {
      map['transport'] = pulumi.Input.mapOptionalInputValue<TriggerTransport,
          Map<String, dynamic>>(transportValue, (value) => value.toMap());
    }
    return map;
  }

  factory TriggerEventarcArgs.fromMap(Map<String, dynamic> map) {
    return TriggerEventarcArgs(
      channel: pulumi.Input.asOptionalInput<String>(map['channel']),
      destination: pulumi.Input.asInput<TriggerDestination>(map['destination']),
      eventDataContentType:
          pulumi.Input.asOptionalInput<String>(map['eventDataContentType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      matchingCriterias: pulumi.Input.asInput<List<TriggerMatchingCriteria>>(
          map['matchingCriterias']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      retryPolicy:
          pulumi.Input.asOptionalInput<TriggerRetryPolicy>(map['retryPolicy']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      transport:
          pulumi.Input.asOptionalInput<TriggerTransport>(map['transport']),
    );
  }
}
