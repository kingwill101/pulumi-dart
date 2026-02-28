// ignore_for_file: unused_element, unnecessary_cast


class ConnectionStatus {
  /// An arbitrary description for the Connection.
  final String? description;
  /// (Output)
  /// State of the Eventing
  final String? state;
  /// (Output)
  /// Current status of eventing.
  /// Structure is documented below.
  final String? status;

  /// Creates a new [ConnectionStatus].
  /// [description] An arbitrary description for the Connection.
  /// [state] (Output)
  /// [status] (Output)
  ConnectionStatus({
    this.description,
    this.state,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'state': ?state,
      'status': ?status,
    };
  }

  factory ConnectionStatus.fromMap(Map<String, dynamic> map) {
    return ConnectionStatus(
      description: map['description'] == null ? null : map['description'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

