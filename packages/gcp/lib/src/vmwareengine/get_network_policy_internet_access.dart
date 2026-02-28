// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkPolicyInternetAccess {
  /// True if the service is enabled; false otherwise.
  final bool enabled;
  /// State of the service. New values may be added to this enum when appropriate.
  final String state;

  /// Creates a new [GetNetworkPolicyInternetAccess].
  /// [enabled] True if the service is enabled; false otherwise.
  /// [state] State of the service. New values may be added to this enum when appropriate.
  GetNetworkPolicyInternetAccess({
    required this.enabled,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'state': state,
    };
  }

  factory GetNetworkPolicyInternetAccess.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyInternetAccess(
      enabled: map['enabled'] as bool,
      state: map['state'] as String,
    );
  }
}

