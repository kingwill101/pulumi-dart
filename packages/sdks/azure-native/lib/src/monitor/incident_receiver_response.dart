// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'incident_service_connection_response.dart';

/// An Incident receiver.
class IncidentReceiverResponse {
  /// The incident service connection
  final pulumi.Input<IncidentServiceConnectionResponse> connection;

  /// The incident management service type
  final pulumi.Input<String> incidentManagementService;

  /// Field mappings for the incident service
  final pulumi.Input<Map<String, String>> mappings;

  /// The name of the Incident receiver. Names must be unique across all receivers within an action group.
  final pulumi.Input<String> name;

  /// Creates a new [IncidentReceiverResponse].
  /// [connection] The incident service connection
  /// [incidentManagementService] The incident management service type
  /// [mappings] Field mappings for the incident service
  /// [name] The name of the Incident receiver. Names must be unique across all receivers within an action group.
  IncidentReceiverResponse({
    required this.connection,
    required this.incidentManagementService,
    required this.mappings,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection':
          pulumi.Input.mapInputValue<
            IncidentServiceConnectionResponse,
            Map<String, dynamic>
          >(connection, (value) => value.toMap()),
      'incidentManagementService': incidentManagementService,
      'mappings': mappings,
      'name': name,
    };
  }

  factory IncidentReceiverResponse.fromMap(Map<String, dynamic> map) {
    return IncidentReceiverResponse(
      connection: pulumi.Input.fromValue(
        IncidentServiceConnectionResponse.fromMap(
          (map['connection']! as Map).cast<String, dynamic>(),
        ),
      ),
      incidentManagementService: pulumi.Input.fromValue(
        map['incidentManagementService'] as String,
      ),
      mappings: pulumi.Input.fromValue(
        (map['mappings'] as Map).cast<String, String>(),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
