// ignore_for_file: unused_element, unnecessary_cast

/// Represents a network service that is managed by a `NetworkPolicy` resource. A network service provides a way to control an aspect of external access to VMware workloads. For example, whether the VMware workloads in the private clouds governed by a network policy can access or be accessed from the internet.
class NetworkService {
  /// True if the service is enabled; false otherwise.
  final bool? enabled;

  /// Creates a new [NetworkService].
  /// [enabled] True if the service is enabled; false otherwise.
  NetworkService({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory NetworkService.fromMap(Map<String, dynamic> map) {
    return NetworkService(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
