// ignore_for_file: unused_element, unnecessary_cast

/// Represents a network service that is managed by a `NetworkPolicy` resource. A network service provides a way to control an aspect of external access to VMware workloads. For example, whether the VMware workloads in the private clouds governed by a network policy can access or be accessed from the internet.
class NetworkServiceResponse {
  /// True if the service is enabled; false otherwise.
  final bool enabled;

  /// State of the service. New values may be added to this enum when appropriate.
  final String state;

  /// Creates a new [NetworkServiceResponse].
  /// [enabled] True if the service is enabled; false otherwise.
  /// [state] State of the service. New values may be added to this enum when appropriate.
  NetworkServiceResponse({
    required this.enabled,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['state'] = state;
    return map;
  }

  factory NetworkServiceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkServiceResponse(
      enabled: map['enabled'] as bool,
      state: map['state'] as String,
    );
  }
}
