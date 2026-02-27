import 'package:pulumi/pulumi.dart';
import '../connector_capacity/connector_capacity.dart';
import '../connector_kafka_cluster/connector_kafka_cluster.dart';
import '../connector_kafka_cluster_client_authentication/connector_kafka_cluster_client_authentication.dart';
import '../connector_kafka_cluster_encryption_in_transit/connector_kafka_cluster_encryption_in_transit.dart';
import '../connector_log_delivery/connector_log_delivery.dart';
import '../connector_plugin/connector_plugin.dart';
import '../connector_worker_configuration/connector_worker_configuration.dart';
import 'connector_args.dart';

/// Provides an Amazon MSK Connect Connector resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK Connect Connector using the connector's `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:mskconnect/connector:Connector example 'arn:aws:kafkaconnect:eu-central-1:123456789012:connector/example/264edee4-17a3-412e-bd76-6681cfc93805-3'
/// ```
class Connector extends CustomResource {
  /// The Amazon Resource Name (ARN) of the connector.
  late final Output<String> arn;

  /// Information about the capacity allocated to the connector. See `capacity` Block for details.
  late final Output<ConnectorCapacity> capacity;

  /// A map of keys to values that represent the configuration for the connector.
  late final Output<Map<String, String>> connectorConfiguration;

  /// A summary description of the connector.
  late final Output<String?> description;

  /// Specifies which Apache Kafka cluster to connect to. See `kafka_cluster` Block for details.
  late final Output<ConnectorKafkaCluster> kafkaCluster;

  /// Details of the client authentication used by the Apache Kafka cluster. See `kafka_cluster_client_authentication` Block for details.
  late final Output<ConnectorKafkaClusterClientAuthentication>
      kafkaClusterClientAuthentication;

  /// Details of encryption in transit to the Apache Kafka cluster. See `kafka_cluster_encryption_in_transit` Block for details.
  late final Output<ConnectorKafkaClusterEncryptionInTransit>
      kafkaClusterEncryptionInTransit;

  /// The version of Kafka Connect. It has to be compatible with both the Apache Kafka cluster's version and the plugins.
  late final Output<String> kafkaconnectVersion;

  /// Details about log delivery. See `log_delivery` Block for details.
  late final Output<ConnectorLogDelivery?> logDelivery;

  /// The name of the connector.
  late final Output<String> name;

  /// Specifies which plugins to use for the connector. See `plugin` Block for details.
  late final Output<List<ConnectorPlugin>> plugins;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM role used by the connector to access the Amazon Web Services resources that it needs. The types of resources depends on the logic of the connector. For example, a connector that has Amazon S3 as a destination must have permissions that allow it to write to the S3 destination bucket.
  ///
  /// The following arguments are optional:
  late final Output<String> serviceExecutionRoleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The current version of the connector.
  late final Output<String> version;

  /// Specifies which worker configuration to use with the connector. See `worker_configuration` Block for details.
  late final Output<ConnectorWorkerConfiguration?> workerConfiguration;

  Connector(
    String name, {
    ConnectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/connector:Connector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacity = registerOutput<ConnectorCapacity>('capacity');
    this.connectorConfiguration =
        registerOutput<Map<String, String>>('connectorConfiguration');
    this.description = registerOutput<String?>('description');
    this.kafkaCluster = registerOutput<ConnectorKafkaCluster>('kafkaCluster');
    this.kafkaClusterClientAuthentication =
        registerOutput<ConnectorKafkaClusterClientAuthentication>(
            'kafkaClusterClientAuthentication');
    this.kafkaClusterEncryptionInTransit =
        registerOutput<ConnectorKafkaClusterEncryptionInTransit>(
            'kafkaClusterEncryptionInTransit');
    this.kafkaconnectVersion = registerOutput<String>('kafkaconnectVersion');
    this.logDelivery = registerOutput<ConnectorLogDelivery?>('logDelivery');
    this.name = registerOutput<String>('name');
    this.plugins = registerOutput<List<ConnectorPlugin>>('plugins');
    this.region = registerOutput<String>('region');
    this.serviceExecutionRoleArn =
        registerOutput<String>('serviceExecutionRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
    this.workerConfiguration =
        registerOutput<ConnectorWorkerConfiguration?>('workerConfiguration');
  }
}
