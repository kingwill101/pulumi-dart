// ignore_for_file: unused_element, unnecessary_cast

import '../event_connection_invocation_connectivity_parameters_resource_parameters/event_connection_invocation_connectivity_parameters_resource_parameters.dart';

class EventConnectionInvocationConnectivityParameters {
  /// The parameters for EventBridge to use when invoking the resource endpoint. Documented below.
  final EventConnectionInvocationConnectivityParametersResourceParameters
      resourceParameters;

  EventConnectionInvocationConnectivityParameters({
    required this.resourceParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceParameters'] = resourceParameters.toMap();
    return map;
  }

  factory EventConnectionInvocationConnectivityParameters.fromMap(
      Map<String, dynamic> map) {
    return EventConnectionInvocationConnectivityParameters(
      resourceParameters:
          EventConnectionInvocationConnectivityParametersResourceParameters
              .fromMap(
                  (map['resourceParameters'] as Map).cast<String, dynamic>()),
    );
  }
}
