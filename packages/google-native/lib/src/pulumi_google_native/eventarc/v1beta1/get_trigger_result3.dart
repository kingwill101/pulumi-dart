// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'destination_response3.dart';
import 'matching_criteria_response.dart';
import 'transport_response2.dart';

/// Result data returned by getTrigger.
class GetTriggerResult3 {
  /// The creation time.
  final String createTime;

  /// Destination specifies where the events should be sent to.
  final DestinationResponse3 destination;

  /// This checksum is computed by the server based on the value of other fields, and may be sent only on create requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  final Map<String, String> labels;

  /// Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  final List<MatchingCriteriaResponse> matchingCriteria;

  /// The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  final String name;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  final String serviceAccount;

  /// In order to deliver messages, Eventarc may use other Google Cloud products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  final TransportResponse2 transport;

  /// The last-modified time.
  final String updateTime;

  GetTriggerResult3({
    required this.createTime,
    required this.destination,
    required this.etag,
    required this.labels,
    required this.matchingCriteria,
    required this.name,
    required this.serviceAccount,
    required this.transport,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['destination'] = destination.toMap();
    map['etag'] = etag;
    map['labels'] = labels;
    map['matchingCriteria'] =
        Input.encodeList<MatchingCriteriaResponse, Map<String, dynamic>>(
            matchingCriteria, (value) => value.toMap());
    map['name'] = name;
    map['serviceAccount'] = serviceAccount;
    map['transport'] = transport.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTriggerResult3.fromMap(Map<String, dynamic> map) {
    return GetTriggerResult3(
      createTime: map['createTime'] as String,
      destination: DestinationResponse3.fromMap(
          (map['destination'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      matchingCriteria: Input.decodeList<MatchingCriteriaResponse>(
          map['matchingCriteria'],
          (value) => MatchingCriteriaResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      serviceAccount: map['serviceAccount'] as String,
      transport: TransportResponse2.fromMap(
          (map['transport'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
