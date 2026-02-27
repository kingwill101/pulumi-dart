// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connector_capacity/connector_capacity.dart';
import '../connector_kafka_cluster/connector_kafka_cluster.dart';
import '../connector_kafka_cluster_client_authentication/connector_kafka_cluster_client_authentication.dart';
import '../connector_kafka_cluster_encryption_in_transit/connector_kafka_cluster_encryption_in_transit.dart';
import '../connector_log_delivery/connector_log_delivery.dart';
import '../connector_plugin/connector_plugin.dart';
import '../connector_worker_configuration/connector_worker_configuration.dart';

/// The set of arguments for Connector.
class ConnectorArgs {
  /// Information about the capacity allocated to the connector. See `capacity` Block for details.
  final pulumi.Input<ConnectorCapacity> capacity;

  /// A map of keys to values that represent the configuration for the connector.
  final pulumi.Input<Map<String, String>> connectorConfiguration;

  /// A summary description of the connector.
  final pulumi.Input<String>? description;

  /// Specifies which Apache Kafka cluster to connect to. See `kafka_cluster` Block for details.
  final pulumi.Input<ConnectorKafkaCluster> kafkaCluster;

  /// Details of the client authentication used by the Apache Kafka cluster. See `kafka_cluster_client_authentication` Block for details.
  final pulumi.Input<ConnectorKafkaClusterClientAuthentication>
      kafkaClusterClientAuthentication;

  /// Details of encryption in transit to the Apache Kafka cluster. See `kafka_cluster_encryption_in_transit` Block for details.
  final pulumi.Input<ConnectorKafkaClusterEncryptionInTransit>
      kafkaClusterEncryptionInTransit;

  /// The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  final pulumi.Input<String> kafkaconnectVersion;

  /// Details about log delivery. See `log_delivery` Block for details.
  final pulumi.Input<ConnectorLogDelivery>? logDelivery;

  /// The name of the connector.
  final pulumi.Input<String>? name;

  /// Specifies which plugins to use for the connector. See `plugin` Block for details.
  final pulumi.Input<List<ConnectorPlugin>> plugins;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceExecutionRoleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies which worker configuration to use with the connector. See `worker_configuration` Block for details.
  final pulumi.Input<ConnectorWorkerConfiguration>? workerConfiguration;

  ConnectorArgs({
    required this.capacity,
    required this.connectorConfiguration,
    this.description,
    required this.kafkaCluster,
    required this.kafkaClusterClientAuthentication,
    required this.kafkaClusterEncryptionInTransit,
    required this.kafkaconnectVersion,
    this.logDelivery,
    this.name,
    required this.plugins,
    this.region,
    required this.serviceExecutionRoleArn,
    this.tags,
    this.workerConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacity'] =
        pulumi.Input.mapInputValue<ConnectorCapacity, Map<String, dynamic>>(
            capacity, (value) => value.toMap());
    map['connectorConfiguration'] = connectorConfiguration;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['kafkaCluster'] =
        pulumi.Input.mapInputValue<ConnectorKafkaCluster, Map<String, dynamic>>(
            kafkaCluster, (value) => value.toMap());
    map['kafkaClusterClientAuthentication'] = pulumi.Input.mapInputValue<
            ConnectorKafkaClusterClientAuthentication, Map<String, dynamic>>(
        kafkaClusterClientAuthentication, (value) => value.toMap());
    map['kafkaClusterEncryptionInTransit'] = pulumi.Input.mapInputValue<
            ConnectorKafkaClusterEncryptionInTransit, Map<String, dynamic>>(
        kafkaClusterEncryptionInTransit, (value) => value.toMap());
    map['kafkaconnectVersion'] = kafkaconnectVersion;
    final logDeliveryValue = logDelivery;
    if (logDeliveryValue != null) {
      map['logDelivery'] = pulumi.Input.mapOptionalInputValue<
          ConnectorLogDelivery,
          Map<String, dynamic>>(logDeliveryValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['plugins'] = pulumi.Input.mapInputValue<List<ConnectorPlugin>,
            List<Map<String, dynamic>>>(
        plugins,
        (value) =>
            pulumi.Input.encodeList<ConnectorPlugin, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceExecutionRoleArn'] = serviceExecutionRoleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final workerConfigurationValue = workerConfiguration;
    if (workerConfigurationValue != null) {
      map['workerConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ConnectorWorkerConfiguration, Map<String, dynamic>>(
          workerConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      capacity: pulumi.Input.asInput<ConnectorCapacity>(map['capacity']),
      connectorConfiguration: pulumi.Input.asInput<Map<String, String>>(
          map['connectorConfiguration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      kafkaCluster:
          pulumi.Input.asInput<ConnectorKafkaCluster>(map['kafkaCluster']),
      kafkaClusterClientAuthentication:
          pulumi.Input.asInput<ConnectorKafkaClusterClientAuthentication>(
              map['kafkaClusterClientAuthentication']),
      kafkaClusterEncryptionInTransit:
          pulumi.Input.asInput<ConnectorKafkaClusterEncryptionInTransit>(
              map['kafkaClusterEncryptionInTransit']),
      kafkaconnectVersion:
          pulumi.Input.asInput<String>(map['kafkaconnectVersion']),
      logDelivery: pulumi.Input.asOptionalInput<ConnectorLogDelivery>(
          map['logDelivery']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      plugins: pulumi.Input.asInput<List<ConnectorPlugin>>(map['plugins']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceExecutionRoleArn:
          pulumi.Input.asInput<String>(map['serviceExecutionRoleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      workerConfiguration:
          pulumi.Input.asOptionalInput<ConnectorWorkerConfiguration>(
              map['workerConfiguration']),
    );
  }
}
