// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exporter_response.dart';
import 'networking_configuration_response.dart';
import 'processor_response.dart';
import 'receiver_response.dart';
import 'service_response.dart';

/// Properties that need to be specified to create a new pipeline group instance.
class PipelineGroupPropertiesResponse {
  /// The exporters specified for a pipeline group instance.
  final List<ExporterResponse> exporters;
  /// Networking configurations for the pipeline group instance.
  final List<NetworkingConfigurationResponse>? networkingConfigurations;
  /// The processors specified for a pipeline group instance.
  final List<ProcessorResponse> processors;
  /// The provisioning state of a pipeline group instance. Set to Succeeded if everything is healthy.
  final String provisioningState;
  /// The receivers specified for a pipeline group instance.
  final List<ReceiverResponse> receivers;
  /// Defines the amount of replicas of the pipeline group instance.
  final int? replicas;
  /// The service section for a given pipeline group instance.
  final ServiceResponse service;

  /// Creates a new [PipelineGroupPropertiesResponse].
  /// [exporters] The exporters specified for a pipeline group instance.
  /// [networkingConfigurations] Networking configurations for the pipeline group instance.
  /// [processors] The processors specified for a pipeline group instance.
  /// [provisioningState] The provisioning state of a pipeline group instance. Set to Succeeded if everything is healthy.
  /// [receivers] The receivers specified for a pipeline group instance.
  /// [replicas] Defines the amount of replicas of the pipeline group instance.
  /// [service] The service section for a given pipeline group instance.
  PipelineGroupPropertiesResponse({
    required this.exporters,
    this.networkingConfigurations,
    required this.processors,
    required this.provisioningState,
    required this.receivers,
    this.replicas,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exporters': pulumi.Input.encodeList<ExporterResponse, Map<String, dynamic>>(exporters, (value) => value.toMap()),
      'networkingConfigurations': ?networkingConfigurations == null ? null : pulumi.Input.encodeList<NetworkingConfigurationResponse, Map<String, dynamic>>(networkingConfigurations!, (value) => value.toMap()),
      'processors': pulumi.Input.encodeList<ProcessorResponse, Map<String, dynamic>>(processors, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'receivers': pulumi.Input.encodeList<ReceiverResponse, Map<String, dynamic>>(receivers, (value) => value.toMap()),
      'replicas': ?replicas,
      'service': service.toMap(),
    };
  }

  factory PipelineGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineGroupPropertiesResponse(
      exporters: pulumi.Input.decodeList<ExporterResponse>(map['exporters'], (value) => ExporterResponse.fromMap((value as Map).cast<String, dynamic>())),
      networkingConfigurations: map['networkingConfigurations'] == null ? null : pulumi.Input.decodeList<NetworkingConfigurationResponse>(map['networkingConfigurations'], (value) => NetworkingConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      processors: pulumi.Input.decodeList<ProcessorResponse>(map['processors'], (value) => ProcessorResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      receivers: pulumi.Input.decodeList<ReceiverResponse>(map['receivers'], (value) => ReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      service: ServiceResponse.fromMap((map['service'] as Map).cast<String, dynamic>()),
    );
  }
}

