// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceNetworkReconnect {
  /// Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  final String delay;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkReconnect].
  /// [delay] Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  DomainDevicesDiskBackingStoreSourceNetworkReconnect({
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delay': delay,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkReconnect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkReconnect(
      delay: map['delay'] as String,
    );
  }
}

