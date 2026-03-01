// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_connection_response.dart';
import 'subscriber_response.dart';

/// Properties of pipeline
class PipelinePropertiesResponse {
  /// Connections associated with pipeline
  final List<PipelineConnectionResponse> connections;
  /// Display name of this pipeline
  final String? displayName;
  /// The flow types allowed for this pipeline
  final List<String>? flowTypes;
  /// The policies for this pipeline
  final List<String>? policies;
  /// Provisioning state of the pipeline
  final String provisioningState;
  /// Remote cloud of the data to be transferred or received
  final String remoteCloud;
  /// Subscribers of this resource
  final List<SubscriberResponse>? subscribers;

  /// Creates a new [PipelinePropertiesResponse].
  /// [connections] Connections associated with pipeline
  /// [displayName] Display name of this pipeline
  /// [flowTypes] The flow types allowed for this pipeline
  /// [policies] The policies for this pipeline
  /// [provisioningState] Provisioning state of the pipeline
  /// [remoteCloud] Remote cloud of the data to be transferred or received
  /// [subscribers] Subscribers of this resource
  PipelinePropertiesResponse({
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
      'connections': pulumi.Input.encodeList<PipelineConnectionResponse, Map<String, dynamic>>(connections, (value) => value.toMap()),
      'displayName': ?displayName,
      'flowTypes': ?flowTypes,
      'policies': ?policies,
      'provisioningState': provisioningState,
      'remoteCloud': remoteCloud,
      'subscribers': ?subscribers == null ? null : pulumi.Input.encodeList<SubscriberResponse, Map<String, dynamic>>(subscribers!, (value) => value.toMap()),
    };
  }

  factory PipelinePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelinePropertiesResponse(
      connections: pulumi.Input.decodeList<PipelineConnectionResponse>(map['connections'], (value) => PipelineConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      flowTypes: map['flowTypes'] == null ? null : (map['flowTypes'] as List).cast<String>(),
      policies: map['policies'] == null ? null : (map['policies'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      remoteCloud: map['remoteCloud'] as String,
      subscribers: map['subscribers'] == null ? null : pulumi.Input.decodeList<SubscriberResponse>(map['subscribers'], (value) => SubscriberResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

