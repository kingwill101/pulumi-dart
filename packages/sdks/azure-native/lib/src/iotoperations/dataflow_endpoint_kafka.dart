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
  final pulumi.Input<DataflowEndpointKafkaBatching>? batching;
  /// Cloud event mapping config.
  final pulumi.Input<String>? cloudEventAttributes;
  /// Compression. Can be none, gzip, lz4, or snappy. No effect if the endpoint is used as a source.
  final pulumi.Input<String>? compression;
  /// Consumer group ID.
  final pulumi.Input<String>? consumerGroupId;
  /// Copy Broker properties. No effect if the endpoint is used as a source or if the dataflow doesn't have an Broker source.
  final pulumi.Input<String>? copyMqttProperties;
  /// Kafka endpoint host.
  final pulumi.Input<String> host;
  /// Kafka acks. Can be all, one, or zero. No effect if the endpoint is used as a source.
  final pulumi.Input<String>? kafkaAcks;
  /// Partition handling strategy. Can be default or static. No effect if the endpoint is used as a source.
  final pulumi.Input<String>? partitionStrategy;
  /// TLS configuration.
  final pulumi.Input<TlsProperties>? tls;

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
    this.compression,
    this.consumerGroupId,
    this.copyMqttProperties,
    required this.host,
    this.kafkaAcks,
    this.partitionStrategy,
    this.tls,
  });

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
      authentication: (DataflowEndpointKafkaAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      batching: map['batching'] == null ? null : (DataflowEndpointKafkaBatching.fromMap((map['batching']! as Map).cast<String, dynamic>())).input(),
      cloudEventAttributes: map['cloudEventAttributes'] == null ? null : (map['cloudEventAttributes']! as String).input(),
      compression: map['compression'] == null ? null : (map['compression']! as String).input(),
      consumerGroupId: map['consumerGroupId'] == null ? null : (map['consumerGroupId']! as String).input(),
      copyMqttProperties: map['copyMqttProperties'] == null ? null : (map['copyMqttProperties']! as String).input(),
      host: (map['host'] as String).input(),
      kafkaAcks: map['kafkaAcks'] == null ? null : (map['kafkaAcks']! as String).input(),
      partitionStrategy: map['partitionStrategy'] == null ? null : (map['partitionStrategy']! as String).input(),
      tls: map['tls'] == null ? null : (TlsProperties.fromMap((map['tls']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

