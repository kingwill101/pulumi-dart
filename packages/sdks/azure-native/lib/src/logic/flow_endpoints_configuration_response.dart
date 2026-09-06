// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_endpoints_response.dart';

/// The endpoints configuration.
class FlowEndpointsConfigurationResponse {
  /// The connector endpoints.
  final pulumi.Input<FlowEndpointsResponse?>? connector;
  /// The workflow endpoints.
  final pulumi.Input<FlowEndpointsResponse?>? workflow;

  /// Creates a new [FlowEndpointsConfigurationResponse].
  /// [connector] The connector endpoints.
  /// [workflow] The workflow endpoints.
  const FlowEndpointsConfigurationResponse({
    this.connector,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?pulumi.Input.mapOptionalInputValue<FlowEndpointsResponse, Map<String, dynamic>>(connector, (value) => value.toMap()),
      'workflow': ?pulumi.Input.mapOptionalInputValue<FlowEndpointsResponse, Map<String, dynamic>>(workflow, (value) => value.toMap()),
    };
  }

  factory FlowEndpointsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FlowEndpointsConfigurationResponse(
      connector: (() { final guardedValue = map['connector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workflow: (() { final guardedValue = map['workflow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
