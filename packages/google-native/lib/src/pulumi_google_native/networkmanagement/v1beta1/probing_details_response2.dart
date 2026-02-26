// ignore_for_file: unused_element, unnecessary_cast

import 'edge_location_response2.dart';
import 'endpoint_info_response3.dart';
import 'latency_distribution_response2.dart';
import 'status_response24.dart';

/// Results of active probing from the last run of the test.
class ProbingDetailsResponse2 {
  /// The reason probing was aborted.
  final String abortCause;

  /// The EdgeLocation from which a packet destined for/originating from the internet will egress/ingress the Google network. This will only be populated for a connectivity test which has an internet destination/source address. The absence of this field *must not* be used as an indication that the destination/source is part of the Google network.
  final EdgeLocationResponse2 destinationEgressLocation;

  /// The source and destination endpoints derived from the test input and used for active probing.
  final EndpointInfoResponse3 endpointInfo;

  /// Details about an internal failure or the cancellation of active probing.
  final StatusResponse24 error;

  /// Latency as measured by active probing in one direction: from the source to the destination endpoint.
  final LatencyDistributionResponse2 probingLatency;

  /// The overall result of active probing.
  final String result;

  /// Number of probes sent.
  final int sentProbeCount;

  /// Number of probes that reached the destination.
  final int successfulProbeCount;

  /// The time that reachability was assessed through active probing.
  final String verifyTime;

  ProbingDetailsResponse2({
    required this.abortCause,
    required this.destinationEgressLocation,
    required this.endpointInfo,
    required this.error,
    required this.probingLatency,
    required this.result,
    required this.sentProbeCount,
    required this.successfulProbeCount,
    required this.verifyTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abortCause'] = abortCause;
    map['destinationEgressLocation'] = destinationEgressLocation.toMap();
    map['endpointInfo'] = endpointInfo.toMap();
    map['error'] = error.toMap();
    map['probingLatency'] = probingLatency.toMap();
    map['result'] = result;
    map['sentProbeCount'] = sentProbeCount;
    map['successfulProbeCount'] = successfulProbeCount;
    map['verifyTime'] = verifyTime;
    return map;
  }

  factory ProbingDetailsResponse2.fromMap(Map<String, dynamic> map) {
    return ProbingDetailsResponse2(
      abortCause: map['abortCause'] as String,
      destinationEgressLocation: EdgeLocationResponse2.fromMap(
          (map['destinationEgressLocation'] as Map).cast<String, dynamic>()),
      endpointInfo: EndpointInfoResponse3.fromMap(
          (map['endpointInfo'] as Map).cast<String, dynamic>()),
      error: StatusResponse24.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      probingLatency: LatencyDistributionResponse2.fromMap(
          (map['probingLatency'] as Map).cast<String, dynamic>()),
      result: map['result'] as String,
      sentProbeCount: map['sentProbeCount'] as int,
      successfulProbeCount: map['successfulProbeCount'] as int,
      verifyTime: map['verifyTime'] as String,
    );
  }
}
