// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_info_response_networkmanagement_v1beta1.dart';
import 'step_response_networkmanagement_v1beta1.dart';

/// Trace represents one simulated packet forwarding path. * Each trace contains multiple ordered steps. * Each step is in a particular state with associated configuration. * State is categorized as final or non-final states. * Each final state has a reason associated. * Each trace must end with a final state (the last step). ``` |---------------------Trace----------------------| Step1(State) Step2(State) --- StepN(State(final)) ```
class TraceResponseNetworkmanagementV1beta1 {
  /// Derived from the source and destination endpoints definition specified by user request, and validated by the data plane model. If there are multiple traces starting from different source locations, then the endpoint_info may be different between traces.
  final EndpointInfoResponseNetworkmanagementV1beta1 endpointInfo;

  /// A trace of a test contains multiple steps from the initial state to the final state (delivered, dropped, forwarded, or aborted). The steps are ordered by the processing sequence within the simulated network state machine. It is critical to preserve the order of the steps and avoid reordering or sorting them.
  final List<StepResponseNetworkmanagementV1beta1> steps;

  TraceResponseNetworkmanagementV1beta1({
    required this.endpointInfo,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointInfo'] = endpointInfo.toMap();
    map['steps'] = pulumi.Input.encodeList<StepResponseNetworkmanagementV1beta1,
        Map<String, dynamic>>(steps, (value) => value.toMap());
    return map;
  }

  factory TraceResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return TraceResponseNetworkmanagementV1beta1(
      endpointInfo: EndpointInfoResponseNetworkmanagementV1beta1.fromMap(
          (map['endpointInfo'] as Map).cast<String, dynamic>()),
      steps: pulumi.Input.decodeList<StepResponseNetworkmanagementV1beta1>(
          map['steps'],
          (value) => StepResponseNetworkmanagementV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
