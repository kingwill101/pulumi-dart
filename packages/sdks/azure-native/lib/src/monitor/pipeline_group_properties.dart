// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exporter.dart';
import 'networking_configuration.dart';
import 'processor.dart';
import 'receiver.dart';
import 'service.dart';

/// Properties that need to be specified to create a new pipeline group instance.
class PipelineGroupProperties {
  /// The exporters specified for a pipeline group instance.
  final pulumi.Input<List<Exporter>> exporters;
  /// Networking configurations for the pipeline group instance.
  final pulumi.Input<List<NetworkingConfiguration>>? networkingConfigurations;
  /// The processors specified for a pipeline group instance.
  final pulumi.Input<List<Processor>> processors;
  /// The receivers specified for a pipeline group instance.
  final pulumi.Input<List<Receiver>> receivers;
  /// Defines the amount of replicas of the pipeline group instance.
  final pulumi.Input<int>? replicas;
  /// The service section for a given pipeline group instance.
  final pulumi.Input<Service> service;

  /// Creates a new [PipelineGroupProperties].
  /// [exporters] The exporters specified for a pipeline group instance.
  /// [networkingConfigurations] Networking configurations for the pipeline group instance.
  /// [processors] The processors specified for a pipeline group instance.
  /// [receivers] The receivers specified for a pipeline group instance.
  /// [replicas] Defines the amount of replicas of the pipeline group instance.
  /// [service] The service section for a given pipeline group instance.
  const PipelineGroupProperties({
    required this.exporters,
    this.networkingConfigurations,
    required this.processors,
    required this.receivers,
    this.replicas,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exporters': pulumi.Input.mapInputValue<List<Exporter>, List<Map<String, dynamic>>>(exporters, (value) => pulumi.Input.encodeList<Exporter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkingConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkingConfiguration>, List<Map<String, dynamic>>>(networkingConfigurations, (value) => pulumi.Input.encodeList<NetworkingConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processors': pulumi.Input.mapInputValue<List<Processor>, List<Map<String, dynamic>>>(processors, (value) => pulumi.Input.encodeList<Processor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'receivers': pulumi.Input.mapInputValue<List<Receiver>, List<Map<String, dynamic>>>(receivers, (value) => pulumi.Input.encodeList<Receiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicas': ?replicas,
      'service': pulumi.Input.mapInputValue<Service, Map<String, dynamic>>(service, (value) => value.toMap()),
    };
  }

  factory PipelineGroupProperties.fromMap(Map<String, dynamic> map) {
    return PipelineGroupProperties(
      exporters: pulumi.Input.fromValue(pulumi.Input.decodeList<Exporter>(map['exporters']!, (value) => Exporter.fromMap((value as Map).cast<String, dynamic>()))),
      networkingConfigurations: (() { final guardedValue = map['networkingConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkingConfiguration>(guardedValue, (value) => NetworkingConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      processors: pulumi.Input.fromValue(pulumi.Input.decodeList<Processor>(map['processors']!, (value) => Processor.fromMap((value as Map).cast<String, dynamic>()))),
      receivers: pulumi.Input.fromValue(pulumi.Input.decodeList<Receiver>(map['receivers']!, (value) => Receiver.fromMap((value as Map).cast<String, dynamic>()))),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      service: pulumi.Input.fromValue(Service.fromMap((map['service']! as Map).cast<String, dynamic>())),
    );
  }
}

