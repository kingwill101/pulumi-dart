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
    pulumi.Output<String>? arn,
    pulumi.Output<ConnectorCapacity>? capacity,
    pulumi.Output<Map<String, String>>? connectorConfiguration,
    pulumi.Output<String>? description,
    pulumi.Output<ConnectorKafkaCluster>? kafkaCluster,
    pulumi.Output<ConnectorKafkaClusterClientAuthentication>? kafkaClusterClientAuthentication,
    pulumi.Output<ConnectorKafkaClusterEncryptionInTransit>? kafkaClusterEncryptionInTransit,
    pulumi.Output<String>? kafkaconnectVersion,
    pulumi.Output<ConnectorLogDelivery>? logDelivery,
    pulumi.Output<String>? name,
    pulumi.Output<List<ConnectorPlugin>>? plugins,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceExecutionRoleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? version,
    pulumi.Output<ConnectorWorkerConfiguration>? workerConfiguration,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      capacity = pulumi.Input.asOptionalInput<ConnectorCapacity>(capacity),
      connectorConfiguration = pulumi.Input.asOptionalInput<Map<String, String>>(connectorConfiguration),
      description = pulumi.Input.asOptionalInput<String>(description),
      kafkaCluster = pulumi.Input.asOptionalInput<ConnectorKafkaCluster>(kafkaCluster),
      kafkaClusterClientAuthentication = pulumi.Input.asOptionalInput<ConnectorKafkaClusterClientAuthentication>(kafkaClusterClientAuthentication),
      kafkaClusterEncryptionInTransit = pulumi.Input.asOptionalInput<ConnectorKafkaClusterEncryptionInTransit>(kafkaClusterEncryptionInTransit),
      kafkaconnectVersion = pulumi.Input.asOptionalInput<String>(kafkaconnectVersion),
      logDelivery = pulumi.Input.asOptionalInput<ConnectorLogDelivery>(logDelivery),
      name = pulumi.Input.asOptionalInput<String>(name),
      plugins = pulumi.Input.asOptionalInput<List<ConnectorPlugin>>(plugins),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceExecutionRoleArn = pulumi.Input.asOptionalInput<String>(serviceExecutionRoleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<String>(version),
      workerConfiguration = pulumi.Input.asOptionalInput<ConnectorWorkerConfiguration>(workerConfiguration);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<ConnectorCapacity>(ConnectorCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>())),
      connectorConfiguration: map['connectorConfiguration'] == null ? null : pulumi.Output.create<Map<String, String>>((map['connectorConfiguration'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kafkaCluster: map['kafkaCluster'] == null ? null : pulumi.Output.create<ConnectorKafkaCluster>(ConnectorKafkaCluster.fromMap((map['kafkaCluster'] as Map).cast<String, dynamic>())),
      kafkaClusterClientAuthentication: map['kafkaClusterClientAuthentication'] == null ? null : pulumi.Output.create<ConnectorKafkaClusterClientAuthentication>(ConnectorKafkaClusterClientAuthentication.fromMap((map['kafkaClusterClientAuthentication'] as Map).cast<String, dynamic>())),
      kafkaClusterEncryptionInTransit: map['kafkaClusterEncryptionInTransit'] == null ? null : pulumi.Output.create<ConnectorKafkaClusterEncryptionInTransit>(ConnectorKafkaClusterEncryptionInTransit.fromMap((map['kafkaClusterEncryptionInTransit'] as Map).cast<String, dynamic>())),
      kafkaconnectVersion: map['kafkaconnectVersion'] == null ? null : pulumi.Output.create<String>(map['kafkaconnectVersion'] as String),
      logDelivery: map['logDelivery'] == null ? null : pulumi.Output.create<ConnectorLogDelivery>(ConnectorLogDelivery.fromMap((map['logDelivery'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plugins: map['plugins'] == null ? null : pulumi.Output.create<List<ConnectorPlugin>>(pulumi.Input.decodeList<ConnectorPlugin>(map['plugins'], (value) => ConnectorPlugin.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceExecutionRoleArn: map['serviceExecutionRoleArn'] == null ? null : pulumi.Output.create<String>(map['serviceExecutionRoleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      workerConfiguration: map['workerConfiguration'] == null ? null : pulumi.Output.create<ConnectorWorkerConfiguration>(ConnectorWorkerConfiguration.fromMap((map['workerConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

