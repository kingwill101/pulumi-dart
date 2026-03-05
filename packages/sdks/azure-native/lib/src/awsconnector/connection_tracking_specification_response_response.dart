// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConnectionTrackingSpecificationResponse
class ConnectionTrackingSpecificationResponseResponse {
  /// &lt;p&gt;Timeout (in seconds) for idle TCP connections in an established state. Min: 60 seconds. Max: 432000 seconds (5 days). Default: 432000 seconds. Recommended: Less than 432000 seconds.&lt;/p&gt;
  final pulumi.Input<int>? tcpEstablishedTimeout;
  /// &lt;p&gt;Timeout (in seconds) for idle UDP flows classified as streams which have seen more than one request-response transaction. Min: 60 seconds. Max: 180 seconds (3 minutes). Default: 180 seconds.&lt;/p&gt;
  final pulumi.Input<int>? udpStreamTimeout;
  /// &lt;p&gt;Timeout (in seconds) for idle UDP flows that have seen traffic only in a single direction or a single request-response transaction. Min: 30 seconds. Max: 60 seconds. Default: 30 seconds.&lt;/p&gt;
  final pulumi.Input<int>? udpTimeout;

  /// Creates a new [ConnectionTrackingSpecificationResponseResponse].
  /// [tcpEstablishedTimeout] &lt;p&gt;Timeout (in seconds) for idle TCP connections in an established state. Min: 60 seconds. Max: 432000 seconds (5 days). Default: 432000 seconds. Recommended: Less than 432000 seconds.&lt;/p&gt;
  /// [udpStreamTimeout] &lt;p&gt;Timeout (in seconds) for idle UDP flows classified as streams which have seen more than one request-response transaction. Min: 60 seconds. Max: 180 seconds (3 minutes). Default: 180 seconds.&lt;/p&gt;
  /// [udpTimeout] &lt;p&gt;Timeout (in seconds) for idle UDP flows that have seen traffic only in a single direction or a single request-response transaction. Min: 30 seconds. Max: 60 seconds. Default: 30 seconds.&lt;/p&gt;
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
      tcpEstablishedTimeout: (() { final guardedValue = map['tcpEstablishedTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      udpStreamTimeout: (() { final guardedValue = map['udpStreamTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      udpTimeout: (() { final guardedValue = map['udpTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

