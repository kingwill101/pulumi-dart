// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConnectionTrackingSpecificationResponse
class ConnectionTrackingSpecificationResponseResponse {
  /// <p>Timeout (in seconds) for idle TCP connections in an established state. Min: 60 seconds. Max: 432000 seconds (5 days). Default: 432000 seconds. Recommended: Less than 432000 seconds.</p>
  final pulumi.Input<int>? tcpEstablishedTimeout;
  /// <p>Timeout (in seconds) for idle UDP flows classified as streams which have seen more than one request-response transaction. Min: 60 seconds. Max: 180 seconds (3 minutes). Default: 180 seconds.</p>
  final pulumi.Input<int>? udpStreamTimeout;
  /// <p>Timeout (in seconds) for idle UDP flows that have seen traffic only in a single direction or a single request-response transaction. Min: 30 seconds. Max: 60 seconds. Default: 30 seconds.</p>
  final pulumi.Input<int>? udpTimeout;

  /// Creates a new [ConnectionTrackingSpecificationResponseResponse].
  /// [tcpEstablishedTimeout] <p>Timeout (in seconds) for idle TCP connections in an established state. Min: 60 seconds. Max: 432000 seconds (5 days). Default: 432000 seconds. Recommended: Less than 432000 seconds.</p>
  /// [udpStreamTimeout] <p>Timeout (in seconds) for idle UDP flows classified as streams which have seen more than one request-response transaction. Min: 60 seconds. Max: 180 seconds (3 minutes). Default: 180 seconds.</p>
  /// [udpTimeout] <p>Timeout (in seconds) for idle UDP flows that have seen traffic only in a single direction or a single request-response transaction. Min: 30 seconds. Max: 60 seconds. Default: 30 seconds.</p>
  ConnectionTrackingSpecificationResponseResponse({
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

  factory ConnectionTrackingSpecificationResponseResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionTrackingSpecificationResponseResponse(
      tcpEstablishedTimeout: map['tcpEstablishedTimeout'] == null ? null : (map['tcpEstablishedTimeout']! as int).input(),
      udpStreamTimeout: map['udpStreamTimeout'] == null ? null : (map['udpStreamTimeout']! as int).input(),
      udpTimeout: map['udpTimeout'] == null ? null : (map['udpTimeout']! as int).input(),
    );
  }
}

