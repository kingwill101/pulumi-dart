// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_eventarc_v1beta1.dart';
import 'matching_criteria.dart';

/// The set of arguments for Trigger.
class TriggerEventarcV1beta1Args {
  /// Destination specifies where the events should be sent to.
  final pulumi.Input<DestinationEventarcV1beta1> destination;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  final pulumi.Input<List<MatchingCriteria>> matchingCriteria;

  /// The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  final pulumi.Input<String>? serviceAccount;

  /// Required. The user-provided ID to be assigned to the trigger.
  final pulumi.Input<String> triggerId;

  TriggerEventarcV1beta1Args({
    required this.destination,
    this.labels,
    this.location,
    required this.matchingCriteria,
    this.name,
    this.project,
    this.serviceAccount,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = pulumi.Input.mapInputValue<DestinationEventarcV1beta1,
        Map<String, dynamic>>(destination, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['matchingCriteria'] = pulumi.Input.mapInputValue<List<MatchingCriteria>,
            List<Map<String, dynamic>>>(
        matchingCriteria,
        (value) =>
            pulumi.Input.encodeList<MatchingCriteria, Map<String, dynamic>>(
                value, (value) => value.toMap()));
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
    map['triggerId'] = triggerId;
    return map;
  }

  factory TriggerEventarcV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TriggerEventarcV1beta1Args(
      destination:
          pulumi.Input.asInput<DestinationEventarcV1beta1>(map['destination']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      matchingCriteria:
          pulumi.Input.asInput<List<MatchingCriteria>>(map['matchingCriteria']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      triggerId: pulumi.Input.asInput<String>(map['triggerId']),
    );
  }
}
