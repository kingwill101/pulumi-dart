// ignore_for_file: unused_element, unnecessary_cast

import 'flow_endpoints.dart';

/// The endpoints configuration.
class FlowEndpointsConfiguration {
  /// The connector endpoints.
  final FlowEndpoints? connector;
  /// The workflow endpoints.
  final FlowEndpoints? workflow;

  /// Creates a new [FlowEndpointsConfiguration].
  /// [connector] The connector endpoints.
  /// [workflow] The workflow endpoints.
  FlowEndpointsConfiguration({
    this.connector,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?connector == null ? null : connector!.toMap(),
      'workflow': ?workflow == null ? null : workflow!.toMap(),
    };
  }

  factory FlowEndpointsConfiguration.fromMap(Map<String, dynamic> map) {
    return FlowEndpointsConfiguration(
      connector: map['connector'] == null ? null : FlowEndpoints.fromMap((map['connector'] as Map).cast<String, dynamic>()),
      workflow: map['workflow'] == null ? null : FlowEndpoints.fromMap((map['workflow'] as Map).cast<String, dynamic>()),
    );
  }
}

