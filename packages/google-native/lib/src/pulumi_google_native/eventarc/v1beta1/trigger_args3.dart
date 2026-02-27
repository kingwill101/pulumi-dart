// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'destination3.dart';
import 'matching_criteria.dart';

/// The set of arguments for Trigger.
class TriggerArgs3 {
  /// Destination specifies where the events should be sent to.
  final Input<Destination3> destination;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  final Input<List<MatchingCriteria>> matchingCriteria;

  /// The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  final Input<String>? serviceAccount;

  /// Required. The user-provided ID to be assigned to the trigger.
  final Input<String> triggerId;

  TriggerArgs3({
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
    map['destination'] =
        Input.mapInputValue<Destination3, Map<String, dynamic>>(
            destination, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['matchingCriteria'] =
        Input.mapInputValue<List<MatchingCriteria>, List<Map<String, dynamic>>>(
            matchingCriteria,
            (value) => Input.encodeList<MatchingCriteria, Map<String, dynamic>>(
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

  factory TriggerArgs3.fromMap(Map<String, dynamic> map) {
    return TriggerArgs3(
      destination: Input.asInput<Destination3>(map['destination']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      matchingCriteria:
          Input.asInput<List<MatchingCriteria>>(map['matchingCriteria']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      triggerId: Input.asInput<String>(map['triggerId']),
    );
  }
}
