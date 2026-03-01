// ignore_for_file: unused_element, unnecessary_cast


/// The connection info for Incident Receiver.
class IncidentServiceConnection {
  /// GUID value representing the connection ID for the incident management service.
  final String id;
  /// The name of the connection.
  final String name;

  /// Creates a new [IncidentServiceConnection].
  /// [id] GUID value representing the connection ID for the incident management service.
  /// [name] The name of the connection.
  IncidentServiceConnection({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory IncidentServiceConnection.fromMap(Map<String, dynamic> map) {
    return IncidentServiceConnection(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

