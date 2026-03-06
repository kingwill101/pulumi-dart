// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The connection info for Incident Receiver.
class IncidentServiceConnectionResponse {
  /// GUID value representing the connection ID for the incident management service.
  final pulumi.Input<String> id;
  /// The name of the connection.
  final pulumi.Input<String> name;

  /// Creates a new [IncidentServiceConnectionResponse].
  /// [id] GUID value representing the connection ID for the incident management service.
  /// [name] The name of the connection.
  const IncidentServiceConnectionResponse({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory IncidentServiceConnectionResponse.fromMap(Map<String, dynamic> map) {
    return IncidentServiceConnectionResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

