// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ConnectionTrackingSpecification
class ConnectionTrackingSpecification {
  /// Property tcpEstablishedTimeout
  final int? tcpEstablishedTimeout;
  /// Property udpStreamTimeout
  final int? udpStreamTimeout;
  /// Property udpTimeout
  final int? udpTimeout;

  /// Creates a new [ConnectionTrackingSpecification].
  /// [tcpEstablishedTimeout] Property tcpEstablishedTimeout
  /// [udpStreamTimeout] Property udpStreamTimeout
  /// [udpTimeout] Property udpTimeout
  ConnectionTrackingSpecification({
    this.tcpEstablishedTimeout,
    this.udpStreamTimeout,
    this.udpTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tcpEstablishedTimeout': ?tcpEstablishedTimeout,
      'udpStreamTimeout': ?udpStreamTimeout,
      'udpTimeout': ?udpTimeout,
    };
  }

  factory ConnectionTrackingSpecification.fromMap(Map<String, dynamic> map) {
    return ConnectionTrackingSpecification(
      tcpEstablishedTimeout: map['tcpEstablishedTimeout'] == null ? null : map['tcpEstablishedTimeout'] as int,
      udpStreamTimeout: map['udpStreamTimeout'] == null ? null : map['udpStreamTimeout'] as int,
      udpTimeout: map['udpTimeout'] == null ? null : map['udpTimeout'] as int,
    );
  }
}

