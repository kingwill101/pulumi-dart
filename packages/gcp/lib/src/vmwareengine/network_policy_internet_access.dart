// ignore_for_file: unused_element, unnecessary_cast


class NetworkPolicyInternetAccess {
  /// True if the service is enabled; false otherwise.
  final bool? enabled;
  /// (Output)
  /// State of the service. New values may be added to this enum when appropriate.
  final String? state;

  /// Creates a new [NetworkPolicyInternetAccess].
  /// [enabled] True if the service is enabled; false otherwise.
  /// [state] (Output)
  NetworkPolicyInternetAccess({
    this.enabled,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'state': ?state,
    };
  }

  factory NetworkPolicyInternetAccess.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyInternetAccess(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

