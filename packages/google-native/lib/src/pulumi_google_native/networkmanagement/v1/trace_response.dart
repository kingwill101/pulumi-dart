// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'endpoint_info_response2.dart';
import 'step_response2.dart';

/// Trace represents one simulated packet forwarding path. * Each trace contains multiple ordered steps. * Each step is in a particular state with associated configuration. * State is categorized as final or non-final states. * Each final state has a reason associated. * Each trace must end with a final state (the last step). ``` |---------------------Trace----------------------| Step1(State) Step2(State) --- StepN(State(final)) ```
class TraceResponse {
  /// Derived from the source and destination endpoints definition specified by user request, and validated by the data plane model. If there are multiple traces starting from different source locations, then the endpoint_info may be different between traces.
  final EndpointInfoResponse2 endpointInfo;

  /// A trace of a test contains multiple steps from the initial state to the final state (delivered, dropped, forwarded, or aborted). The steps are ordered by the processing sequence within the simulated network state machine. It is critical to preserve the order of the steps and avoid reordering or sorting them.
  final List<StepResponse2> steps;

  TraceResponse({
    required this.endpointInfo,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointInfo'] = endpointInfo.toMap();
    map['steps'] = Input.encodeList<StepResponse2, Map<String, dynamic>>(
        steps, (value) => value.toMap());
    return map;
  }

  factory TraceResponse.fromMap(Map<String, dynamic> map) {
    return TraceResponse(
      endpointInfo: EndpointInfoResponse2.fromMap(
          (map['endpointInfo'] as Map).cast<String, dynamic>()),
      steps: Input.decodeList<StepResponse2>(
          map['steps'],
          (value) =>
              StepResponse2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
