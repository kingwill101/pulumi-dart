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
  final pulumi.Input<List<ExporterResponse>> exporters;
  /// Networking configurations for the pipeline group instance.
  final pulumi.Input<List<NetworkingConfigurationResponse>>? networkingConfigurations;
  /// The processors specified for a pipeline group instance.
  final pulumi.Input<List<ProcessorResponse>> processors;
  /// The provisioning state of a pipeline group instance. Set to Succeeded if everything is healthy.
  final pulumi.Input<String> provisioningState;
  /// The receivers specified for a pipeline group instance.
  final pulumi.Input<List<ReceiverResponse>> receivers;
  /// Defines the amount of replicas of the pipeline group instance.
  final pulumi.Input<int>? replicas;
  /// The service section for a given pipeline group instance.
  final pulumi.Input<ServiceResponse> service;

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
      'exporters': pulumi.Input.mapInputValue<List<ExporterResponse>, List<Map<String, dynamic>>>(exporters, (value) => pulumi.Input.encodeList<ExporterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkingConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkingConfigurationResponse>, List<Map<String, dynamic>>>(networkingConfigurations, (value) => pulumi.Input.encodeList<NetworkingConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processors': pulumi.Input.mapInputValue<List<ProcessorResponse>, List<Map<String, dynamic>>>(processors, (value) => pulumi.Input.encodeList<ProcessorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'receivers': pulumi.Input.mapInputValue<List<ReceiverResponse>, List<Map<String, dynamic>>>(receivers, (value) => pulumi.Input.encodeList<ReceiverResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicas': ?replicas,
      'service': pulumi.Input.mapInputValue<ServiceResponse, Map<String, dynamic>>(service, (value) => value.toMap()),
    };
  }

  factory PipelineGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineGroupPropertiesResponse(
      exporters: (pulumi.Input.decodeList<ExporterResponse>(map['exporters'], (value) => ExporterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkingConfigurations: map['networkingConfigurations'] == null ? null : (pulumi.Input.decodeList<NetworkingConfigurationResponse>(map['networkingConfigurations']!, (value) => NetworkingConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      processors: (pulumi.Input.decodeList<ProcessorResponse>(map['processors'], (value) => ProcessorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      receivers: (pulumi.Input.decodeList<ReceiverResponse>(map['receivers'], (value) => ReceiverResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      service: (ServiceResponse.fromMap((map['service'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

