// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_endpoints_response.dart';

/// The endpoints configuration.
class FlowEndpointsConfigurationResponse {
  /// The connector endpoints.
  final pulumi.Input<FlowEndpointsResponse>? connector;
  /// The workflow endpoints.
  final pulumi.Input<FlowEndpointsResponse>? workflow;

  /// Creates a new [FlowEndpointsConfigurationResponse].
  /// [connector] The connector endpoints.
  /// [workflow] The workflow endpoints.
  FlowEndpointsConfigurationResponse({
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
      connector: map['connector'] == null ? null : (FlowEndpointsResponse.fromMap((map['connector']! as Map).cast<String, dynamic>())).input(),
      workflow: map['workflow'] == null ? null : (FlowEndpointsResponse.fromMap((map['workflow']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

