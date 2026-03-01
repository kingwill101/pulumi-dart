// ignore_for_file: unused_element, unnecessary_cast


/// Session network configuration.
class SessionNetworkConfigurationResponse {
  /// Network status for the sessions.
  final String? status;

  /// Creates a new [SessionNetworkConfigurationResponse].
  /// [status] Network status for the sessions.
  SessionNetworkConfigurationResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory SessionNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SessionNetworkConfigurationResponse(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

