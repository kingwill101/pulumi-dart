// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_capacity.dart';
import 'connector_kafka_cluster.dart';
import 'connector_kafka_cluster_client_authentication.dart';
import 'connector_kafka_cluster_encryption_in_transit.dart';
import 'connector_log_delivery.dart';
import 'connector_plugin.dart';
import 'connector_worker_configuration.dart';

/// Input properties used for looking up and filtering Connector resources.
class ConnectorState {
  /// The Amazon Resource Name (ARN) of the connector.
  final pulumi.Input<String>? arn;
  /// Information about the capacity allocated to the connector. See `capacity` Block for details.
  final pulumi.Input<ConnectorCapacity>? capacity;
  /// A map of keys to values that represent the configuration for the connector.
  final pulumi.Input<Map<String, String>>? connectorConfiguration;
  /// A summary description of the connector.
  final pulumi.Input<String>? description;
  /// Specifies which Apache Kafka cluster to connect to. See `kafka_cluster` Block for details.
  final pulumi.Input<ConnectorKafkaCluster>? kafkaCluster;
  /// Details of the client authentication used by the Apache Kafka cluster. See `kafka_cluster_client_authentication` Block for details.
  final pulumi.Input<ConnectorKafkaClusterClientAuthentication>? kafkaClusterClientAuthentication;
  /// Details of encryption in transit to the Apache Kafka cluster. See `kafka_cluster_encryption_in_transit` Block for details.
  final pulumi.Input<ConnectorKafkaClusterEncryptionInTransit>? kafkaClusterEncryptionInTransit;
  /// The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  final pulumi.Input<String>? kafkaconnectVersion;
  /// Details about log delivery. See `log_delivery` Block for details.
  final pulumi.Input<ConnectorLogDelivery>? logDelivery;
  /// The name of the connector.
  final pulumi.Input<String>? name;
  /// Specifies which plugins to use for the connector. See `plugin` Block for details.
  final pulumi.Input<List<ConnectorPlugin>>? plugins;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? serviceExecutionRoleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The current version of the connector.
  final pulumi.Input<String>? version;
  /// Specifies which worker configuration to use with the connector. See `worker_configuration` Block for details.
  final pulumi.Input<ConnectorWorkerConfiguration>? workerConfiguration;

  /// Creates a new [ConnectorState].
  /// [arn] The Amazon Resource Name (ARN) of the connector.
  /// [capacity] Information about the capacity allocated to the connector. See `capacity` Block for details.
  /// [connectorConfiguration] A map of keys to values that represent the configuration for the connector.
  /// [description] A summary description of the connector.
  /// [kafkaCluster] Specifies which Apache Kafka cluster to connect to. See `kafka_cluster` Block for details.
  /// [kafkaClusterClientAuthentication] Details of the client authentication used by the Apache Kafka cluster. See `kafka_cluster_client_authentication` Block for details.
  /// [kafkaClusterEncryptionInTransit] Details of encryption in transit to the Apache Kafka cluster. See `kafka_cluster_encryption_in_transit` Block for details.
  /// [kafkaconnectVersion] The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  /// [logDelivery] Details about log delivery. See `log_delivery` Block for details.
  /// [name] The name of the connector.
  /// [plugins] Specifies which plugins to use for the connector. See `plugin` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceExecutionRoleArn] The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] The current version of the connector.
  /// [workerConfiguration] Specifies which worker configuration to use with the connector. See `worker_configuration` Block for details.
  ConnectorState({
    this.arn,
    this.capacity,
    this.connectorConfiguration,
    this.description,
    this.kafkaCluster,
    this.kafkaClusterClientAuthentication,
    this.kafkaClusterEncryptionInTransit,
    this.kafkaconnectVersion,
    this.logDelivery,
    this.name,
    this.plugins,
    this.region,
    this.serviceExecutionRoleArn,
    this.tags,
    this.tagsAll,
    this.version,
    this.workerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacity': ?pulumi.Input.mapOptionalInputValue<ConnectorCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'connectorConfiguration': ?connectorConfiguration,
      'description': ?description,
      'kafkaCluster': ?pulumi.Input.mapOptionalInputValue<ConnectorKafkaCluster, Map<String, dynamic>>(kafkaCluster, (value) => value.toMap()),
      'kafkaClusterClientAuthentication': ?pulumi.Input.mapOptionalInputValue<ConnectorKafkaClusterClientAuthentication, Map<String, dynamic>>(kafkaClusterClientAuthentication, (value) => value.toMap()),
      'kafkaClusterEncryptionInTransit': ?pulumi.Input.mapOptionalInputValue<ConnectorKafkaClusterEncryptionInTransit, Map<String, dynamic>>(kafkaClusterEncryptionInTransit, (value) => value.toMap()),
      'kafkaconnectVersion': ?kafkaconnectVersion,
      'logDelivery': ?pulumi.Input.mapOptionalInputValue<ConnectorLogDelivery, Map<String, dynamic>>(logDelivery, (value) => value.toMap()),
      'name': ?name,
      'plugins': ?pulumi.Input.mapOptionalInputValue<List<ConnectorPlugin>, List<Map<String, dynamic>>>(plugins, (value) => pulumi.Input.encodeList<ConnectorPlugin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'serviceExecutionRoleArn': ?serviceExecutionRoleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
      'workerConfiguration': ?pulumi.Input.mapOptionalInputValue<ConnectorWorkerConfiguration, Map<String, dynamic>>(workerConfiguration, (value) => value.toMap()),
    };
  }

  factory ConnectorState.fromMap(Map<String, dynamic> map) {
    return ConnectorState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      capacity: map['capacity'] == null ? null : ((ConnectorCapacity.fromMap((map['capacity']! as Map).cast<String, dynamic>())).input()).input(),
      connectorConfiguration: map['connectorConfiguration'] == null ? null : (((map['connectorConfiguration'] as Map).cast<String, String>()).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      kafkaCluster: map['kafkaCluster'] == null ? null : ((ConnectorKafkaCluster.fromMap((map['kafkaCluster']! as Map).cast<String, dynamic>())).input()).input(),
      kafkaClusterClientAuthentication: map['kafkaClusterClientAuthentication'] == null ? null : ((ConnectorKafkaClusterClientAuthentication.fromMap((map['kafkaClusterClientAuthentication']! as Map).cast<String, dynamic>())).input()).input(),
      kafkaClusterEncryptionInTransit: map['kafkaClusterEncryptionInTransit'] == null ? null : ((ConnectorKafkaClusterEncryptionInTransit.fromMap((map['kafkaClusterEncryptionInTransit']! as Map).cast<String, dynamic>())).input()).input(),
      kafkaconnectVersion: map['kafkaconnectVersion'] == null ? null : ((map['kafkaconnectVersion'] as String).input()).input(),
      logDelivery: map['logDelivery'] == null ? null : ((ConnectorLogDelivery.fromMap((map['logDelivery']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      plugins: map['plugins'] == null ? null : ((pulumi.Input.decodeList<ConnectorPlugin>(map['plugins']!, (value) => ConnectorPlugin.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceExecutionRoleArn: map['serviceExecutionRoleArn'] == null ? null : ((map['serviceExecutionRoleArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
      workerConfiguration: map['workerConfiguration'] == null ? null : ((ConnectorWorkerConfiguration.fromMap((map['workerConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

