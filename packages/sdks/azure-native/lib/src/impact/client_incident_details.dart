// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client incident details ex: incidentId , incident source
class ClientIncidentDetails {
  /// Client incident id. ex : id of the incident created to investigate and address the impact if any.
  final pulumi.Input<String>? clientIncidentId;
  /// Client incident source. ex : source system name where the incident is created
  final pulumi.Input<String>? clientIncidentSource;

  /// Creates a new [ClientIncidentDetails].
  /// [clientIncidentId] Client incident id. ex : id of the incident created to investigate and address the impact if any.
  /// [clientIncidentSource] Client incident source. ex : source system name where the incident is created
  const ClientIncidentDetails({
    this.clientIncidentId,
    this.clientIncidentSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIncidentId': ?clientIncidentId,
      'clientIncidentSource': ?clientIncidentSource,
    };
  }

  factory ClientIncidentDetails.fromMap(Map<String, dynamic> map) {
    return ClientIncidentDetails(
      clientIncidentId: (() { final guardedValue = map['clientIncidentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientIncidentSource: (() { final guardedValue = map['clientIncidentSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

