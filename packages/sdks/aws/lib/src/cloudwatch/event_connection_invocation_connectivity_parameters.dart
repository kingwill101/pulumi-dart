// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_invocation_connectivity_parameters_resource_parameters.dart';

class EventConnectionInvocationConnectivityParameters {
  /// The parameters for EventBridge to use when invoking the resource endpoint. Documented below.
  final pulumi.Input<EventConnectionInvocationConnectivityParametersResourceParameters> resourceParameters;

  /// Creates a new [EventConnectionInvocationConnectivityParameters].
  /// [resourceParameters] The parameters for EventBridge to use when invoking the resource endpoint. Documented below.
  const EventConnectionInvocationConnectivityParameters({
    required this.resourceParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceParameters': pulumi.Input.mapInputValue<EventConnectionInvocationConnectivityParametersResourceParameters, Map<String, dynamic>>(resourceParameters, (value) => value.toMap()),
    };
  }

  factory EventConnectionInvocationConnectivityParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionInvocationConnectivityParameters(
      resourceParameters: pulumi.Input.fromValue(EventConnectionInvocationConnectivityParametersResourceParameters.fromMap((map['resourceParameters']! as Map).cast<String, dynamic>())),
    );
  }
}

