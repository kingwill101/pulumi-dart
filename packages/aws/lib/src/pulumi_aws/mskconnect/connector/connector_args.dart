// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connector_capacity/connector_capacity.dart';
import '../connector_kafka_cluster/connector_kafka_cluster.dart';
import '../connector_kafka_cluster_client_authentication/connector_kafka_cluster_client_authentication.dart';
import '../connector_kafka_cluster_encryption_in_transit/connector_kafka_cluster_encryption_in_transit.dart';
import '../connector_log_delivery/connector_log_delivery.dart';
import '../connector_plugin/connector_plugin.dart';
import '../connector_worker_configuration/connector_worker_configuration.dart';

/// The set of arguments for Connector.
class ConnectorArgs {
  /// Information about the capacity allocated to the connector. See <span pulumi-lang-nodejs="`capacity`" pulumi-lang-dotnet="`Capacity`" pulumi-lang-go="`capacity`" pulumi-lang-python="`capacity`" pulumi-lang-yaml="`capacity`" pulumi-lang-java="`capacity`">`capacity`</span> Block for details.
  final Input<ConnectorCapacity> capacity;

  /// A map of keys to values that represent the configuration for the connector.
  final Input<Map<String, String>> connectorConfiguration;

  /// A summary description of the connector.
  final Input<String>? description;

  /// Specifies which Apache Kafka cluster to connect to. See <span pulumi-lang-nodejs="`kafkaCluster`" pulumi-lang-dotnet="`KafkaCluster`" pulumi-lang-go="`kafkaCluster`" pulumi-lang-python="`kafka_cluster`" pulumi-lang-yaml="`kafkaCluster`" pulumi-lang-java="`kafkaCluster`">`kafka_cluster`</span> Block for details.
  final Input<ConnectorKafkaCluster> kafkaCluster;

  /// Details of the client authentication used by the Apache Kafka cluster. See <span pulumi-lang-nodejs="`kafkaClusterClientAuthentication`" pulumi-lang-dotnet="`KafkaClusterClientAuthentication`" pulumi-lang-go="`kafkaClusterClientAuthentication`" pulumi-lang-python="`kafka_cluster_client_authentication`" pulumi-lang-yaml="`kafkaClusterClientAuthentication`" pulumi-lang-java="`kafkaClusterClientAuthentication`">`kafka_cluster_client_authentication`</span> Block for details.
  final Input<ConnectorKafkaClusterClientAuthentication>
      kafkaClusterClientAuthentication;

  /// Details of encryption in transit to the Apache Kafka cluster. See <span pulumi-lang-nodejs="`kafkaClusterEncryptionInTransit`" pulumi-lang-dotnet="`KafkaClusterEncryptionInTransit`" pulumi-lang-go="`kafkaClusterEncryptionInTransit`" pulumi-lang-python="`kafka_cluster_encryption_in_transit`" pulumi-lang-yaml="`kafkaClusterEncryptionInTransit`" pulumi-lang-java="`kafkaClusterEncryptionInTransit`">`kafka_cluster_encryption_in_transit`</span> Block for details.
  final Input<ConnectorKafkaClusterEncryptionInTransit>
      kafkaClusterEncryptionInTransit;

  /// The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  final Input<String> kafkaconnectVersion;

  /// Details about log delivery. See <span pulumi-lang-nodejs="`logDelivery`" pulumi-lang-dotnet="`LogDelivery`" pulumi-lang-go="`logDelivery`" pulumi-lang-python="`log_delivery`" pulumi-lang-yaml="`logDelivery`" pulumi-lang-java="`logDelivery`">`log_delivery`</span> Block for details.
  final Input<ConnectorLogDelivery>? logDelivery;

  /// The name of the connector.
  final Input<String>? name;

  /// Specifies which plugins to use for the connector. See <span pulumi-lang-nodejs="`plugin`" pulumi-lang-dotnet="`Plugin`" pulumi-lang-go="`plugin`" pulumi-lang-python="`plugin`" pulumi-lang-yaml="`plugin`" pulumi-lang-java="`plugin`">`plugin`</span> Block for details.
  final Input<List<ConnectorPlugin>> plugins;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.
  ///
  /// The following arguments are optional:
  final Input<String> serviceExecutionRoleArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies which worker configuration to use with the connector. See <span pulumi-lang-nodejs="`workerConfiguration`" pulumi-lang-dotnet="`WorkerConfiguration`" pulumi-lang-go="`workerConfiguration`" pulumi-lang-python="`worker_configuration`" pulumi-lang-yaml="`workerConfiguration`" pulumi-lang-java="`workerConfiguration`">`worker_configuration`</span> Block for details.
  final Input<ConnectorWorkerConfiguration>? workerConfiguration;

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
        Input.mapInputValue<ConnectorCapacity, Map<String, dynamic>>(
            capacity, (value) => value.toMap());
    map['connectorConfiguration'] = connectorConfiguration;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['kafkaCluster'] =
        Input.mapInputValue<ConnectorKafkaCluster, Map<String, dynamic>>(
            kafkaCluster, (value) => value.toMap());
    map['kafkaClusterClientAuthentication'] = Input.mapInputValue<
            ConnectorKafkaClusterClientAuthentication, Map<String, dynamic>>(
        kafkaClusterClientAuthentication, (value) => value.toMap());
    map['kafkaClusterEncryptionInTransit'] = Input.mapInputValue<
            ConnectorKafkaClusterEncryptionInTransit, Map<String, dynamic>>(
        kafkaClusterEncryptionInTransit, (value) => value.toMap());
    map['kafkaconnectVersion'] = kafkaconnectVersion;
    final logDeliveryValue = logDelivery;
    if (logDeliveryValue != null) {
      map['logDelivery'] = Input.mapOptionalInputValue<ConnectorLogDelivery,
          Map<String, dynamic>>(logDeliveryValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['plugins'] =
        Input.mapInputValue<List<ConnectorPlugin>, List<Map<String, dynamic>>>(
            plugins,
            (value) => Input.encodeList<ConnectorPlugin, Map<String, dynamic>>(
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
      map['workerConfiguration'] = Input.mapOptionalInputValue<
              ConnectorWorkerConfiguration, Map<String, dynamic>>(
          workerConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      capacity: Input.asInput<ConnectorCapacity>(map['capacity']),
      connectorConfiguration:
          Input.asInput<Map<String, String>>(map['connectorConfiguration']),
      description: Input.asOptionalInput<String>(map['description']),
      kafkaCluster: Input.asInput<ConnectorKafkaCluster>(map['kafkaCluster']),
      kafkaClusterClientAuthentication:
          Input.asInput<ConnectorKafkaClusterClientAuthentication>(
              map['kafkaClusterClientAuthentication']),
      kafkaClusterEncryptionInTransit:
          Input.asInput<ConnectorKafkaClusterEncryptionInTransit>(
              map['kafkaClusterEncryptionInTransit']),
      kafkaconnectVersion: Input.asInput<String>(map['kafkaconnectVersion']),
      logDelivery:
          Input.asOptionalInput<ConnectorLogDelivery>(map['logDelivery']),
      name: Input.asOptionalInput<String>(map['name']),
      plugins: Input.asInput<List<ConnectorPlugin>>(map['plugins']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceExecutionRoleArn:
          Input.asInput<String>(map['serviceExecutionRoleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      workerConfiguration: Input.asOptionalInput<ConnectorWorkerConfiguration>(
          map['workerConfiguration']),
    );
  }
}
