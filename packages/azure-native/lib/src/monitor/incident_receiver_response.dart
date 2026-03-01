// ignore_for_file: unused_element, unnecessary_cast

import 'incident_service_connection_response.dart';

/// An Incident receiver.
class IncidentReceiverResponse {
  /// The incident service connection
  final IncidentServiceConnectionResponse connection;
  /// The incident management service type
  final String incidentManagementService;
  /// Field mappings for the incident service
  final Map<String, String> mappings;
  /// The name of the Incident receiver. Names must be unique across all receivers within an action group.
  final String name;

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
      'connection': connection.toMap(),
      'incidentManagementService': incidentManagementService,
      'mappings': mappings,
      'name': name,
    };
  }

  factory IncidentReceiverResponse.fromMap(Map<String, dynamic> map) {
    return IncidentReceiverResponse(
      connection: IncidentServiceConnectionResponse.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      incidentManagementService: map['incidentManagementService'] as String,
      mappings: (map['mappings'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}

