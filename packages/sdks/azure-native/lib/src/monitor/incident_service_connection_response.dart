// ignore_for_file: unused_element, unnecessary_cast


/// The connection info for Incident Receiver.
class IncidentServiceConnectionResponse {
  /// GUID value representing the connection ID for the incident management service.
  final String id;
  /// The name of the connection.
  final String name;

  /// Creates a new [IncidentServiceConnectionResponse].
  /// [id] GUID value representing the connection ID for the incident management service.
  /// [name] The name of the connection.
  IncidentServiceConnectionResponse({
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
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

