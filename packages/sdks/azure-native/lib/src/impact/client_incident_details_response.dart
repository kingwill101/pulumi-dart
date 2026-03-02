// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client incident details ex: incidentId , incident source
class ClientIncidentDetailsResponse {
  /// Client incident id. ex : id of the incident created to investigate and address the impact if any.
  final pulumi.Input<String>? clientIncidentId;
  /// Client incident source. ex : source system name where the incident is created
  final pulumi.Input<String>? clientIncidentSource;

  /// Creates a new [ClientIncidentDetailsResponse].
  /// [clientIncidentId] Client incident id. ex : id of the incident created to investigate and address the impact if any.
  /// [clientIncidentSource] Client incident source. ex : source system name where the incident is created
  ClientIncidentDetailsResponse({
    this.clientIncidentId,
    this.clientIncidentSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIncidentId': ?clientIncidentId,
      'clientIncidentSource': ?clientIncidentSource,
    };
  }

  factory ClientIncidentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ClientIncidentDetailsResponse(
      clientIncidentId: map['clientIncidentId'] == null ? null : (map['clientIncidentId'] as String).input(),
      clientIncidentSource: map['clientIncidentSource'] == null ? null : (map['clientIncidentSource'] as String).input(),
    );
  }
}

