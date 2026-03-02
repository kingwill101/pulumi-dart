// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConnectionTrackingSpecification
class ConnectionTrackingSpecificationResponse {
  /// Property tcpEstablishedTimeout
  final pulumi.Input<int>? tcpEstablishedTimeout;
  /// Property udpStreamTimeout
  final pulumi.Input<int>? udpStreamTimeout;
  /// Property udpTimeout
  final pulumi.Input<int>? udpTimeout;

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
      tcpEstablishedTimeout: map['tcpEstablishedTimeout'] == null ? null : (map['tcpEstablishedTimeout']! as int).input(),
      udpStreamTimeout: map['udpStreamTimeout'] == null ? null : (map['udpStreamTimeout']! as int).input(),
      udpTimeout: map['udpTimeout'] == null ? null : (map['udpTimeout']! as int).input(),
    );
  }
}

