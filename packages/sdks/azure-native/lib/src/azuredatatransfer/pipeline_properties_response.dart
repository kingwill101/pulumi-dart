// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_connection_response.dart';
import 'subscriber_response.dart';

/// Properties of pipeline
class PipelinePropertiesResponse {
  /// Connections associated with pipeline
  final pulumi.Input<List<PipelineConnectionResponse>> connections;
  /// Display name of this pipeline
  final pulumi.Input<String>? displayName;
  /// The flow types allowed for this pipeline
  final pulumi.Input<List<String>>? flowTypes;
  /// The policies for this pipeline
  final pulumi.Input<List<String>>? policies;
  /// Provisioning state of the pipeline
  final pulumi.Input<String> provisioningState;
  /// Remote cloud of the data to be transferred or received
  final pulumi.Input<String> remoteCloud;
  /// Subscribers of this resource
  final pulumi.Input<List<SubscriberResponse>>? subscribers;

  /// Creates a new [PipelinePropertiesResponse].
  /// [connections] Connections associated with pipeline
  /// [displayName] Display name of this pipeline
  /// [flowTypes] The flow types allowed for this pipeline
  /// [policies] The policies for this pipeline
  /// [provisioningState] Provisioning state of the pipeline
  /// [remoteCloud] Remote cloud of the data to be transferred or received
  /// [subscribers] Subscribers of this resource
  const PipelinePropertiesResponse({
    required this.connections,
    this.displayName,
    this.flowTypes,
    this.policies,
    required this.provisioningState,
    required this.remoteCloud,
    this.subscribers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': pulumi.Input.mapInputValue<List<PipelineConnectionResponse>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<PipelineConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'flowTypes': ?flowTypes,
      'policies': ?policies,
      'provisioningState': provisioningState,
      'remoteCloud': remoteCloud,
      'subscribers': ?pulumi.Input.mapOptionalInputValue<List<SubscriberResponse>, List<Map<String, dynamic>>>(subscribers, (value) => pulumi.Input.encodeList<SubscriberResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelinePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelinePropertiesResponse(
      connections: pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineConnectionResponse>(map['connections']!, (value) => PipelineConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowTypes: (() { final guardedValue = map['flowTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      remoteCloud: pulumi.Input.fromValue(map['remoteCloud'] as String),
      subscribers: (() { final guardedValue = map['subscribers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriberResponse>(guardedValue, (value) => SubscriberResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

