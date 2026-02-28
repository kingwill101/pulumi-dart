// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateNetworkInterfaceConnectionTrackingSpecification {
  /// Timeout (in seconds) for idle TCP connections in an established state. Min: 60 seconds. Max: 432000 seconds (5 days). Default: 432000 seconds. Recommended: Less than 432000 seconds.
  final int? tcpEstablishedTimeout;

  /// Timeout (in seconds) for idle UDP flows classified as streams which have seen more than one request-response transaction. Min: 60 seconds. Max: 180 seconds (3 minutes). Default: 180 seconds.
  final int? udpStreamTimeout;

  /// Timeout (in seconds) for idle UDP flows that have seen traffic only in a single direction or a single request-response transaction. Min: 30 seconds. Max: 60 seconds. Default: 30 seconds.
  final int? udpTimeout;

  /// Creates a new [LaunchTemplateNetworkInterfaceConnectionTrackingSpecification].
  /// [tcpEstablishedTimeout] Timeout (in seconds) for idle TCP connections in an established state. Min: 60 seconds. Max: 432000 seconds (5 days). Default: 432000 seconds. Recommended: Less than 432000 seconds.
  /// [udpStreamTimeout] Timeout (in seconds) for idle UDP flows classified as streams which have seen more than one request-response transaction. Min: 60 seconds. Max: 180 seconds (3 minutes). Default: 180 seconds.
  /// [udpTimeout] Timeout (in seconds) for idle UDP flows that have seen traffic only in a single direction or a single request-response transaction. Min: 30 seconds. Max: 60 seconds. Default: 30 seconds.
  LaunchTemplateNetworkInterfaceConnectionTrackingSpecification({
    this.tcpEstablishedTimeout,
    this.udpStreamTimeout,
    this.udpTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tcpEstablishedTimeoutValue = tcpEstablishedTimeout;
    if (tcpEstablishedTimeoutValue != null) {
      map['tcpEstablishedTimeout'] = tcpEstablishedTimeoutValue;
    }
    final udpStreamTimeoutValue = udpStreamTimeout;
    if (udpStreamTimeoutValue != null) {
      map['udpStreamTimeout'] = udpStreamTimeoutValue;
    }
    final udpTimeoutValue = udpTimeout;
    if (udpTimeoutValue != null) {
      map['udpTimeout'] = udpTimeoutValue;
    }
    return map;
  }

  factory LaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateNetworkInterfaceConnectionTrackingSpecification(
      tcpEstablishedTimeout: map['tcpEstablishedTimeout'] == null
          ? null
          : map['tcpEstablishedTimeout'] as int,
      udpStreamTimeout: map['udpStreamTimeout'] == null
          ? null
          : map['udpStreamTimeout'] as int,
      udpTimeout: map['udpTimeout'] == null ? null : map['udpTimeout'] as int,
    );
  }
}
