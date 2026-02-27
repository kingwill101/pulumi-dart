// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_connectivity_test_run_reachability_detail_trace_endpoint_info/get_connectivity_test_run_reachability_detail_trace_endpoint_info.dart';
import '../get_connectivity_test_run_reachability_detail_trace_step/get_connectivity_test_run_reachability_detail_trace_step.dart';

class GetConnectivityTestRunReachabilityDetailTrace {
  /// (Output)
  /// Derived from the source and destination endpoints definition specified by user request, and validated by the data plane model.
  /// Structure is documented below.
  final List<GetConnectivityTestRunReachabilityDetailTraceEndpointInfo>
      endpointInfos;

  /// (Output)
  /// ID of the trace.
  final int forwardTraceId;

  /// (Output)
  /// A trace of a test contains multiple steps from the initial state to the final state (delivered, dropped, forwarded, or aborted).
  /// Structure is documented below.
  final List<GetConnectivityTestRunReachabilityDetailTraceStep> steps;

  GetConnectivityTestRunReachabilityDetailTrace({
    required this.endpointInfos,
    required this.forwardTraceId,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointInfos'] = pulumi.Input.encodeList<
        GetConnectivityTestRunReachabilityDetailTraceEndpointInfo,
        Map<String, dynamic>>(endpointInfos, (value) => value.toMap());
    map['forwardTraceId'] = forwardTraceId;
    map['steps'] = pulumi.Input.encodeList<
        GetConnectivityTestRunReachabilityDetailTraceStep,
        Map<String, dynamic>>(steps, (value) => value.toMap());
    return map;
  }

  factory GetConnectivityTestRunReachabilityDetailTrace.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestRunReachabilityDetailTrace(
      endpointInfos: pulumi.Input.decodeList<
              GetConnectivityTestRunReachabilityDetailTraceEndpointInfo>(
          map['endpointInfos'],
          (value) =>
              GetConnectivityTestRunReachabilityDetailTraceEndpointInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      forwardTraceId: map['forwardTraceId'] as int,
      steps: pulumi.Input.decodeList<
              GetConnectivityTestRunReachabilityDetailTraceStep>(
          map['steps'],
          (value) => GetConnectivityTestRunReachabilityDetailTraceStep.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
