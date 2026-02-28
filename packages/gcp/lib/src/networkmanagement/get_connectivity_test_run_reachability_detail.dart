// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_run_reachability_detail_trace.dart';

class GetConnectivityTestRunReachabilityDetail {
  /// (Output)
  /// Status of the connectivity test: RESULT_UNSPECIFIED, REACHABLE, UNREACHABLE, AMBIGUOUS or UNDETERMINED.
  final String result;

  /// (Output)
  /// List of connectivity test traces.
  /// Structure is documented below.
  final List<GetConnectivityTestRunReachabilityDetailTrace> traces;

  /// (Output)
  /// Time when reachability details were determined. An RFC3339 timestamp in UTC time.
  /// This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  final String verifyTime;

  /// Creates a new [GetConnectivityTestRunReachabilityDetail].
  /// [result] (Output)
  /// [traces] (Output)
  /// [verifyTime] (Output)
  GetConnectivityTestRunReachabilityDetail({
    required this.result,
    required this.traces,
    required this.verifyTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['result'] = result;
    map['traces'] = pulumi.Input.encodeList<
        GetConnectivityTestRunReachabilityDetailTrace,
        Map<String, dynamic>>(traces, (value) => value.toMap());
    map['verifyTime'] = verifyTime;
    return map;
  }

  factory GetConnectivityTestRunReachabilityDetail.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestRunReachabilityDetail(
      result: map['result'] as String,
      traces: pulumi.Input.decodeList<
              GetConnectivityTestRunReachabilityDetailTrace>(
          map['traces'],
          (value) => GetConnectivityTestRunReachabilityDetailTrace.fromMap(
              (value as Map).cast<String, dynamic>())),
      verifyTime: map['verifyTime'] as String,
    );
  }
}
