// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_kafka_authentication.dart';
import 'dataflow_endpoint_kafka_batching.dart';
import 'tls_properties.dart';

/// Kafka endpoint properties
class DataflowEndpointKafka {
  /// Authentication configuration. NOTE - only authentication property is allowed per entry.
  final pulumi.Input<DataflowEndpointKafkaAuthentication> authentication;
  /// Batching configuration.
  final pulumi.Input<DataflowEndpointKafkaBatching?>? batching;
  /// Cloud event mapping config.
  final pulumi.Input<dynamic>? cloudEventAttributes;
  /// Compression. Can be none, gzip, lz4, or snappy. No effect if the endpoint is used as a source.
  final pulumi.Input<dynamic>? compression;
  /// Consumer group ID.
  final pulumi.Input<String?>? consumerGroupId;
  /// Copy Broker properties. No effect if the endpoint is used as a source or if the dataflow doesn't have an Broker source.
  final pulumi.Input<dynamic>? copyMqttProperties;
  /// Kafka endpoint host.
  final pulumi.Input<String> host;
  /// Kafka acks. Can be all, one, or zero. No effect if the endpoint is used as a source.
  final pulumi.Input<dynamic>? kafkaAcks;
  /// Partition handling strategy. Can be default or static. No effect if the endpoint is used as a source.
  final pulumi.Input<dynamic>? partitionStrategy;
  /// TLS configuration.
  final pulumi.Input<TlsProperties?>? tls;

  /// Creates a new [DataflowEndpointKafka].
  /// [authentication] Authentication configuration. NOTE - only authentication property is allowed per entry.
  /// [batching] Batching configuration.
  /// [cloudEventAttributes] Cloud event mapping config.
  /// [compression] Compression. Can be none, gzip, lz4, or snappy. No effect if the endpoint is used as a source.
  /// [consumerGroupId] Consumer group ID.
  /// [copyMqttProperties] Copy Broker properties. No effect if the endpoint is used as a source or if the dataflow doesn't have an Broker source.
  /// [host] Kafka endpoint host.
  /// [kafkaAcks] Kafka acks. Can be all, one, or zero. No effect if the endpoint is used as a source.
  /// [partitionStrategy] Partition handling strategy. Can be default or static. No effect if the endpoint is used as a source.
  /// [tls] TLS configuration.
  DataflowEndpointKafka({
    required this.authentication,
    this.batching,
    this.cloudEventAttributes,
    pulumi.Input<dynamic>? compression,
    this.consumerGroupId,
    pulumi.Input<dynamic>? copyMqttProperties,
    required this.host,
    pulumi.Input<dynamic>? kafkaAcks,
    pulumi.Input<dynamic>? partitionStrategy,
    this.tls,
  }) : compression = compression ?? pulumi.Input.fromValue('None'), copyMqttProperties = copyMqttProperties ?? pulumi.Input.fromValue('Enabled'), kafkaAcks = kafkaAcks ?? pulumi.Input.fromValue('All'), partitionStrategy = partitionStrategy ?? pulumi.Input.fromValue('Default');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<DataflowEndpointKafkaAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'batching': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointKafkaBatching, Map<String, dynamic>>(batching, (value) => value.toMap()),
      'cloudEventAttributes': ?cloudEventAttributes,
      'compression': ?compression,
      'consumerGroupId': ?consumerGroupId,
      'copyMqttProperties': ?copyMqttProperties,
      'host': host,
      'kafkaAcks': ?kafkaAcks,
      'partitionStrategy': ?partitionStrategy,
      'tls': ?pulumi.Input.mapOptionalInputValue<TlsProperties, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory DataflowEndpointKafka.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointKafka(
      authentication: pulumi.Input.fromValue(DataflowEndpointKafkaAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      batching: (() { final guardedValue = map['batching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointKafkaBatching.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudEventAttributes: (() { final guardedValue = map['cloudEventAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      consumerGroupId: (() { final guardedValue = map['consumerGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyMqttProperties: (() { final guardedValue = map['copyMqttProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      kafkaAcks: (() { final guardedValue = map['kafkaAcks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionStrategy: (() { final guardedValue = map['partitionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
