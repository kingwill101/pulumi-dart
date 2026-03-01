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
  final List<Exporter> exporters;
  /// Networking configurations for the pipeline group instance.
  final List<NetworkingConfiguration>? networkingConfigurations;
  /// The processors specified for a pipeline group instance.
  final List<Processor> processors;
  /// The receivers specified for a pipeline group instance.
  final List<Receiver> receivers;
  /// Defines the amount of replicas of the pipeline group instance.
  final int? replicas;
  /// The service section for a given pipeline group instance.
  final Service service;

  /// Creates a new [PipelineGroupProperties].
  /// [exporters] The exporters specified for a pipeline group instance.
  /// [networkingConfigurations] Networking configurations for the pipeline group instance.
  /// [processors] The processors specified for a pipeline group instance.
  /// [receivers] The receivers specified for a pipeline group instance.
  /// [replicas] Defines the amount of replicas of the pipeline group instance.
  /// [service] The service section for a given pipeline group instance.
  PipelineGroupProperties({
    required this.exporters,
    this.networkingConfigurations,
    required this.processors,
    required this.receivers,
    this.replicas,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exporters': pulumi.Input.encodeList<Exporter, Map<String, dynamic>>(exporters, (value) => value.toMap()),
      'networkingConfigurations': ?networkingConfigurations == null ? null : pulumi.Input.encodeList<NetworkingConfiguration, Map<String, dynamic>>(networkingConfigurations!, (value) => value.toMap()),
      'processors': pulumi.Input.encodeList<Processor, Map<String, dynamic>>(processors, (value) => value.toMap()),
      'receivers': pulumi.Input.encodeList<Receiver, Map<String, dynamic>>(receivers, (value) => value.toMap()),
      'replicas': ?replicas,
      'service': service.toMap(),
    };
  }

  factory PipelineGroupProperties.fromMap(Map<String, dynamic> map) {
    return PipelineGroupProperties(
      exporters: pulumi.Input.decodeList<Exporter>(map['exporters'], (value) => Exporter.fromMap((value as Map).cast<String, dynamic>())),
      networkingConfigurations: map['networkingConfigurations'] == null ? null : pulumi.Input.decodeList<NetworkingConfiguration>(map['networkingConfigurations'], (value) => NetworkingConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      processors: pulumi.Input.decodeList<Processor>(map['processors'], (value) => Processor.fromMap((value as Map).cast<String, dynamic>())),
      receivers: pulumi.Input.decodeList<Receiver>(map['receivers'], (value) => Receiver.fromMap((value as Map).cast<String, dynamic>())),
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      service: Service.fromMap((map['service'] as Map).cast<String, dynamic>()),
    );
  }
}

