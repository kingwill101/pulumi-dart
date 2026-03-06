// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_endpoints.dart';

/// The endpoints configuration.
class FlowEndpointsConfiguration {
  /// The connector endpoints.
  final pulumi.Input<FlowEndpoints>? connector;
  /// The workflow endpoints.
  final pulumi.Input<FlowEndpoints>? workflow;

  /// Creates a new [FlowEndpointsConfiguration].
  /// [connector] The connector endpoints.
  /// [workflow] The workflow endpoints.
  const FlowEndpointsConfiguration({
    this.connector,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?pulumi.Input.mapOptionalInputValue<FlowEndpoints, Map<String, dynamic>>(connector, (value) => value.toMap()),
      'workflow': ?pulumi.Input.mapOptionalInputValue<FlowEndpoints, Map<String, dynamic>>(workflow, (value) => value.toMap()),
    };
  }

  factory FlowEndpointsConfiguration.fromMap(Map<String, dynamic> map) {
    return FlowEndpointsConfiguration(
      connector: (() { final guardedValue = map['connector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workflow: (() { final guardedValue = map['workflow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

