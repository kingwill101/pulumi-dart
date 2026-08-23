// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_connection_auth_parameters_connectivity_parameters_resource_parameters.dart';

class EventConnectionAuthParametersConnectivityParameters {
  /// The parameters for EventBridge to use when invoking the authentication endpoint. Documented below.
  final pulumi.Input<EventConnectionAuthParametersConnectivityParametersResourceParameters> resourceParameters;

  /// Creates a new [EventConnectionAuthParametersConnectivityParameters].
  /// [resourceParameters] The parameters for EventBridge to use when invoking the authentication endpoint. Documented below.
  const EventConnectionAuthParametersConnectivityParameters({
    required this.resourceParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceParameters': pulumi.Input.mapInputValue<EventConnectionAuthParametersConnectivityParametersResourceParameters, Map<String, dynamic>>(resourceParameters, (value) => value.toMap()),
    };
  }

  factory EventConnectionAuthParametersConnectivityParameters.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersConnectivityParameters(
      resourceParameters: pulumi.Input.fromValue(EventConnectionAuthParametersConnectivityParametersResourceParameters.fromMap((map['resourceParameters']! as Map).cast<String, dynamic>())),
    );
  }
}
