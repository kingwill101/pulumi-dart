// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceNetworkReconnect {
  /// Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  final String delay;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkReconnect].
  /// [delay] Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  DomainDevicesDiskMirrorBackingStoreSourceNetworkReconnect({
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delay': delay,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkReconnect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkReconnect(
      delay: map['delay'] as String,
    );
  }
}

