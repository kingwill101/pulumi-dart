// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'status_response23.dart';
import 'trace_response.dart';

/// Results of the configuration analysis from the last run of the test.
class ReachabilityDetailsResponse {
  /// The details of a failure or a cancellation of reachability analysis.
  final StatusResponse23 error;

  /// The overall result of the test's configuration analysis.
  final String result;

  /// Result may contain a list of traces if a test has multiple possible paths in the network, such as when destination endpoint is a load balancer with multiple backends.
  final List<TraceResponse> traces;

  /// The time of the configuration analysis.
  final String verifyTime;

  ReachabilityDetailsResponse({
    required this.error,
    required this.result,
    required this.traces,
    required this.verifyTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error.toMap();
    map['result'] = result;
    map['traces'] = Input.encodeList<TraceResponse, Map<String, dynamic>>(
        traces, (value) => value.toMap());
    map['verifyTime'] = verifyTime;
    return map;
  }

  factory ReachabilityDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReachabilityDetailsResponse(
      error: StatusResponse23.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      result: map['result'] as String,
      traces: Input.decodeList<TraceResponse>(
          map['traces'],
          (value) =>
              TraceResponse.fromMap((value as Map).cast<String, dynamic>())),
      verifyTime: map['verifyTime'] as String,
    );
  }
}
