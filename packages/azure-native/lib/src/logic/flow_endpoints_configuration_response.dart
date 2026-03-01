// ignore_for_file: unused_element, unnecessary_cast

import 'flow_endpoints_response.dart';

/// The endpoints configuration.
class FlowEndpointsConfigurationResponse {
  /// The connector endpoints.
  final FlowEndpointsResponse? connector;
  /// The workflow endpoints.
  final FlowEndpointsResponse? workflow;

  /// Creates a new [FlowEndpointsConfigurationResponse].
  /// [connector] The connector endpoints.
  /// [workflow] The workflow endpoints.
  FlowEndpointsConfigurationResponse({
    this.connector,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?connector == null ? null : connector!.toMap(),
      'workflow': ?workflow == null ? null : workflow!.toMap(),
    };
  }

  factory FlowEndpointsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FlowEndpointsConfigurationResponse(
      connector: map['connector'] == null ? null : FlowEndpointsResponse.fromMap((map['connector'] as Map).cast<String, dynamic>()),
      workflow: map['workflow'] == null ? null : FlowEndpointsResponse.fromMap((map['workflow'] as Map).cast<String, dynamic>()),
    );
  }
}

