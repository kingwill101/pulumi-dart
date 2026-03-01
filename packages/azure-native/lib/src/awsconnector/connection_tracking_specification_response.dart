// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ConnectionTrackingSpecification
class ConnectionTrackingSpecificationResponse {
  /// Property tcpEstablishedTimeout
  final int? tcpEstablishedTimeout;
  /// Property udpStreamTimeout
  final int? udpStreamTimeout;
  /// Property udpTimeout
  final int? udpTimeout;

  /// Creates a new [ConnectionTrackingSpecificationResponse].
  /// [tcpEstablishedTimeout] Property tcpEstablishedTimeout
  /// [udpStreamTimeout] Property udpStreamTimeout
  /// [udpTimeout] Property udpTimeout
  ConnectionTrackingSpecificationResponse({
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

  factory ConnectionTrackingSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionTrackingSpecificationResponse(
      tcpEstablishedTimeout: map['tcpEstablishedTimeout'] == null ? null : map['tcpEstablishedTimeout'] as int,
      udpStreamTimeout: map['udpStreamTimeout'] == null ? null : map['udpStreamTimeout'] as int,
      udpTimeout: map['udpTimeout'] == null ? null : map['udpTimeout'] as int,
    );
  }
}

