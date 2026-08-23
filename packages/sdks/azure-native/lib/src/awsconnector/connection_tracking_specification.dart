// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConnectionTrackingSpecification
class ConnectionTrackingSpecification {
  /// Property tcpEstablishedTimeout
  final pulumi.Input<int>? tcpEstablishedTimeout;
  /// Property udpStreamTimeout
  final pulumi.Input<int>? udpStreamTimeout;
  /// Property udpTimeout
  final pulumi.Input<int>? udpTimeout;

  /// Creates a new [ConnectionTrackingSpecification].
  /// [tcpEstablishedTimeout] Property tcpEstablishedTimeout
  /// [udpStreamTimeout] Property udpStreamTimeout
  /// [udpTimeout] Property udpTimeout
  const ConnectionTrackingSpecification({
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
      tcpEstablishedTimeout: (() { final guardedValue = map['tcpEstablishedTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      udpStreamTimeout: (() { final guardedValue = map['udpStreamTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      udpTimeout: (() { final guardedValue = map['udpTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
