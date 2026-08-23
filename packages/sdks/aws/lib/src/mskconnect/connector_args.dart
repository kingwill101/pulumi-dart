// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_capacity.dart';
import 'connector_kafka_cluster.dart';
import 'connector_kafka_cluster_client_authentication.dart';
import 'connector_kafka_cluster_encryption_in_transit.dart';
import 'connector_log_delivery.dart';
import 'connector_plugin.dart';
import 'connector_worker_configuration.dart';

/// {@template pulumi_mskconnect_connector_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_mskconnect_connector_connector_args_doc}
class ConnectorArgs {
  /// Information about the capacity allocated to the connector. See `capacity` Block for details.
  final pulumi.Input<ConnectorCapacity> capacity;
  /// A map of keys to values that represent the configuration for the connector.
  final pulumi.Input<Map<String, String>> connectorConfiguration;
  /// A summary description of the connector.
  final pulumi.Input<String>? description;
  /// Specifies which Apache Kafka cluster to connect to. See `kafkaCluster` Block for details.
  final pulumi.Input<ConnectorKafkaCluster> kafkaCluster;
  /// Details of the client authentication used by the Apache Kafka cluster. See `kafkaClusterClientAuthentication` Block for details.
  final pulumi.Input<ConnectorKafkaClusterClientAuthentication> kafkaClusterClientAuthentication;
  /// Details of encryption in transit to the Apache Kafka cluster. See `kafkaClusterEncryptionInTransit` Block for details.
  final pulumi.Input<ConnectorKafkaClusterEncryptionInTransit> kafkaClusterEncryptionInTransit;
  /// The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  final pulumi.Input<String> kafkaconnectVersion;
  /// Details about log delivery. See `logDelivery` Block for details.
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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies which worker configuration to use with the connector. See `workerConfiguration` Block for details.
  final pulumi.Input<ConnectorWorkerConfiguration>? workerConfiguration;

  /// Creates a new [ConnectorArgs].
  /// [capacity] Information about the capacity allocated to the connector. See `capacity` Block for details.
  /// [connectorConfiguration] A map of keys to values that represent the configuration for the connector.
  /// [description] A summary description of the connector.
  /// [kafkaCluster] Specifies which Apache Kafka cluster to connect to. See `kafkaCluster` Block for details.
  /// [kafkaClusterClientAuthentication] Details of the client authentication used by the Apache Kafka cluster. See `kafkaClusterClientAuthentication` Block for details.
  /// [kafkaClusterEncryptionInTransit] Details of encryption in transit to the Apache Kafka cluster. See `kafkaClusterEncryptionInTransit` Block for details.
  /// [kafkaconnectVersion] The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  /// [logDelivery] Details about log delivery. See `logDelivery` Block for details.
  /// [name] The name of the connector.
  /// [plugins] Specifies which plugins to use for the connector. See `plugin` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceExecutionRoleArn] The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [workerConfiguration] Specifies which worker configuration to use with the connector. See `workerConfiguration` Block for details.
  const ConnectorArgs({
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
    return <String, dynamic>{
      'capacity': pulumi.Input.mapInputValue<ConnectorCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'connectorConfiguration': connectorConfiguration,
      'description': ?description,
      'kafkaCluster': pulumi.Input.mapInputValue<ConnectorKafkaCluster, Map<String, dynamic>>(kafkaCluster, (value) => value.toMap()),
      'kafkaClusterClientAuthentication': pulumi.Input.mapInputValue<ConnectorKafkaClusterClientAuthentication, Map<String, dynamic>>(kafkaClusterClientAuthentication, (value) => value.toMap()),
      'kafkaClusterEncryptionInTransit': pulumi.Input.mapInputValue<ConnectorKafkaClusterEncryptionInTransit, Map<String, dynamic>>(kafkaClusterEncryptionInTransit, (value) => value.toMap()),
      'kafkaconnectVersion': kafkaconnectVersion,
      'logDelivery': ?pulumi.Input.mapOptionalInputValue<ConnectorLogDelivery, Map<String, dynamic>>(logDelivery, (value) => value.toMap()),
      'name': ?name,
      'plugins': pulumi.Input.mapInputValue<List<ConnectorPlugin>, List<Map<String, dynamic>>>(plugins, (value) => pulumi.Input.encodeList<ConnectorPlugin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'serviceExecutionRoleArn': serviceExecutionRoleArn,
      'tags': ?tags,
      'workerConfiguration': ?pulumi.Input.mapOptionalInputValue<ConnectorWorkerConfiguration, Map<String, dynamic>>(workerConfiguration, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      capacity: pulumi.Input.fromValue(ConnectorCapacity.fromMap((map['capacity']! as Map).cast<String, dynamic>())),
      connectorConfiguration: pulumi.Input.fromValue((map['connectorConfiguration'] as Map).cast<String, String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaCluster: pulumi.Input.fromValue(ConnectorKafkaCluster.fromMap((map['kafkaCluster']! as Map).cast<String, dynamic>())),
      kafkaClusterClientAuthentication: pulumi.Input.fromValue(ConnectorKafkaClusterClientAuthentication.fromMap((map['kafkaClusterClientAuthentication']! as Map).cast<String, dynamic>())),
      kafkaClusterEncryptionInTransit: pulumi.Input.fromValue(ConnectorKafkaClusterEncryptionInTransit.fromMap((map['kafkaClusterEncryptionInTransit']! as Map).cast<String, dynamic>())),
      kafkaconnectVersion: pulumi.Input.fromValue(map['kafkaconnectVersion'] as String),
      logDelivery: (() { final guardedValue = map['logDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plugins: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectorPlugin>(map['plugins']!, (value) => ConnectorPlugin.fromMap((value as Map).cast<String, dynamic>()))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceExecutionRoleArn: pulumi.Input.fromValue(map['serviceExecutionRoleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workerConfiguration: (() { final guardedValue = map['workerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorWorkerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
