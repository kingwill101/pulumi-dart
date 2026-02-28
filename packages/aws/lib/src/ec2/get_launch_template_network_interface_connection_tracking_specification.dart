// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification {
  final int tcpEstablishedTimeout;
  final int udpStreamTimeout;
  final int udpTimeout;

  /// Creates a new [GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification].
  /// [tcpEstablishedTimeout] Required.
  /// [udpStreamTimeout] Required.
  /// [udpTimeout] Required.
  GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification({
    required this.tcpEstablishedTimeout,
    required this.udpStreamTimeout,
    required this.udpTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tcpEstablishedTimeout'] = tcpEstablishedTimeout;
    map['udpStreamTimeout'] = udpStreamTimeout;
    map['udpTimeout'] = udpTimeout;
    return map;
  }

  factory GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification(
      tcpEstablishedTimeout: map['tcpEstablishedTimeout'] as int,
      udpStreamTimeout: map['udpStreamTimeout'] as int,
      udpTimeout: map['udpTimeout'] as int,
    );
  }
}
