import 'package:pulumi/pulumi.dart';
import '../cluster_broker_node_group_info/cluster_broker_node_group_info.dart';
import '../cluster_client_authentication/cluster_client_authentication.dart';
import '../cluster_configuration_info/cluster_configuration_info.dart';
import '../cluster_encryption_info/cluster_encryption_info.dart';
import '../cluster_logging_info/cluster_logging_info.dart';
import '../cluster_open_monitoring/cluster_open_monitoring.dart';
import '../cluster_rebalancing/cluster_rebalancing.dart';
import 'cluster_args10.dart';

/// Manages an Amazon MSK cluster.
///
/// > **Note:** This resource manages _provisioned_ clusters. To manage a _serverless_ Amazon MSK cluster, use the `aws.msk.ServerlessCluster` resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With volume_throughput argument
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK clusters using the cluster `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/cluster:Cluster example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class Cluster10 extends CustomResource {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  late final Output<String> arn;

  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  late final Output<String> bootstrapBrokers;

  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersPublicSaslIam;

  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersPublicSaslScram;

  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersPublicTls;

  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersSaslIam;

  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersSaslScram;

  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersTls;

  /// A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersVpcConnectivitySaslIam;

  /// A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersVpcConnectivitySaslScram;

  /// A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersVpcConnectivityTls;

  /// Configuration block for the broker nodes of the Kafka cluster. See broker_node_group_info Argument Reference below.
  late final Output<ClusterBrokerNodeGroupInfo> brokerNodeGroupInfo;

  /// Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
  late final Output<ClusterClientAuthentication?> clientAuthentication;

  /// Name of the MSK cluster.
  late final Output<String> clusterName;

  /// UUID of the MSK cluster, for use in IAM policies.
  late final Output<String> clusterUuid;

  /// Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configuration_info Argument Reference below.
  late final Output<ClusterConfigurationInfo?> configurationInfo;

  /// Current version of the MSK Cluster used for updates, e.g., `K13V1IB3VIYZZH`
  late final Output<String> currentVersion;

  /// Configuration block for specifying encryption. See encryption_info Argument Reference below.
  late final Output<ClusterEncryptionInfo?> encryptionInfo;

  /// Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  late final Output<String?> enhancedMonitoring;

  /// Specify the desired Kafka software version.
  late final Output<String> kafkaVersion;

  /// Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See logging_info Argument Reference below.
  late final Output<ClusterLoggingInfo?> loggingInfo;

  /// The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  late final Output<int> numberOfBrokerNodes;

  /// Configuration block for JMX and Node monitoring for the MSK cluster. See open_monitoring Argument Reference below.
  late final Output<ClusterOpenMonitoring?> openMonitoring;

  /// Configuration block for intelligent rebalancing. See rebalancing Argument Reference below. Only applicable to MSK Provisioned clusters with Express brokers.
  late final Output<ClusterRebalancing> rebalancing;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Controls storage mode for supported storage tiers. Valid values are: `LOCAL` or `TIERED`.
  late final Output<String> storageMode;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  late final Output<String> zookeeperConnectString;

  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  late final Output<String> zookeeperConnectStringTls;

  Cluster10(
    String name, {
    ClusterArgs10? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bootstrapBrokers = registerOutput<String>('bootstrapBrokers');
    this.bootstrapBrokersPublicSaslIam =
        registerOutput<String>('bootstrapBrokersPublicSaslIam');
    this.bootstrapBrokersPublicSaslScram =
        registerOutput<String>('bootstrapBrokersPublicSaslScram');
    this.bootstrapBrokersPublicTls =
        registerOutput<String>('bootstrapBrokersPublicTls');
    this.bootstrapBrokersSaslIam =
        registerOutput<String>('bootstrapBrokersSaslIam');
    this.bootstrapBrokersSaslScram =
        registerOutput<String>('bootstrapBrokersSaslScram');
    this.bootstrapBrokersTls = registerOutput<String>('bootstrapBrokersTls');
    this.bootstrapBrokersVpcConnectivitySaslIam =
        registerOutput<String>('bootstrapBrokersVpcConnectivitySaslIam');
    this.bootstrapBrokersVpcConnectivitySaslScram =
        registerOutput<String>('bootstrapBrokersVpcConnectivitySaslScram');
    this.bootstrapBrokersVpcConnectivityTls =
        registerOutput<String>('bootstrapBrokersVpcConnectivityTls');
    this.brokerNodeGroupInfo =
        registerOutput<ClusterBrokerNodeGroupInfo>('brokerNodeGroupInfo');
    this.clientAuthentication =
        registerOutput<ClusterClientAuthentication?>('clientAuthentication');
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUuid = registerOutput<String>('clusterUuid');
    this.configurationInfo =
        registerOutput<ClusterConfigurationInfo?>('configurationInfo');
    this.currentVersion = registerOutput<String>('currentVersion');
    this.encryptionInfo =
        registerOutput<ClusterEncryptionInfo?>('encryptionInfo');
    this.enhancedMonitoring = registerOutput<String?>('enhancedMonitoring');
    this.kafkaVersion = registerOutput<String>('kafkaVersion');
    this.loggingInfo = registerOutput<ClusterLoggingInfo?>('loggingInfo');
    this.numberOfBrokerNodes = registerOutput<int>('numberOfBrokerNodes');
    this.openMonitoring =
        registerOutput<ClusterOpenMonitoring?>('openMonitoring');
    this.rebalancing = registerOutput<ClusterRebalancing>('rebalancing');
    this.region = registerOutput<String>('region');
    this.storageMode = registerOutput<String>('storageMode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.zookeeperConnectString =
        registerOutput<String>('zookeeperConnectString');
    this.zookeeperConnectStringTls =
        registerOutput<String>('zookeeperConnectStringTls');
  }
}
