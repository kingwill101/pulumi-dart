// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info.dart';
import 'cluster_client_authentication.dart';
import 'cluster_configuration_info.dart';
import 'cluster_encryption_info.dart';
import 'cluster_logging_info.dart';
import 'cluster_open_monitoring.dart';
import 'cluster_rebalancing.dart';

/// {@template pulumi_msk_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_msk_cluster_cluster_args_doc}
class ClusterArgs {
  /// Configuration block for the broker nodes of the Kafka cluster. See broker_node_group_info Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfo> brokerNodeGroupInfo;
  /// Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
  final pulumi.Input<ClusterClientAuthentication>? clientAuthentication;
  /// Name of the MSK cluster.
  final pulumi.Input<String>? clusterName;
  /// Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configuration_info Argument Reference below.
  final pulumi.Input<ClusterConfigurationInfo>? configurationInfo;
  /// Configuration block for specifying encryption. See encryption_info Argument Reference below.
  final pulumi.Input<ClusterEncryptionInfo>? encryptionInfo;
  /// Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  final pulumi.Input<String>? enhancedMonitoring;
  /// Specify the desired Kafka software version.
  final pulumi.Input<String> kafkaVersion;
  /// Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See logging_info Argument Reference below.
  final pulumi.Input<ClusterLoggingInfo>? loggingInfo;
  /// The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  final pulumi.Input<int> numberOfBrokerNodes;
  /// Configuration block for JMX and Node monitoring for the MSK cluster. See open_monitoring Argument Reference below.
  final pulumi.Input<ClusterOpenMonitoring>? openMonitoring;
  /// Configuration block for intelligent rebalancing. See rebalancing Argument Reference below. Only applicable to MSK Provisioned clusters with Express brokers.
  final pulumi.Input<ClusterRebalancing>? rebalancing;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Controls storage mode for supported storage tiers. Valid values are: `LOCAL` or `TIERED`.
  final pulumi.Input<String>? storageMode;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [brokerNodeGroupInfo] Configuration block for the broker nodes of the Kafka cluster. See broker_node_group_info Argument Reference below.
  /// [clientAuthentication] Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
  /// [clusterName] Name of the MSK cluster.
  /// [configurationInfo] Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configuration_info Argument Reference below.
  /// [encryptionInfo] Configuration block for specifying encryption. See encryption_info Argument Reference below.
  /// [enhancedMonitoring] Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  /// [kafkaVersion] Specify the desired Kafka software version.
  /// [loggingInfo] Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See logging_info Argument Reference below.
  /// [numberOfBrokerNodes] The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  /// [openMonitoring] Configuration block for JMX and Node monitoring for the MSK cluster. See open_monitoring Argument Reference below.
  /// [rebalancing] Configuration block for intelligent rebalancing. See rebalancing Argument Reference below. Only applicable to MSK Provisioned clusters with Express brokers.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageMode] Controls storage mode for supported storage tiers. Valid values are: `LOCAL` or `TIERED`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterArgs({
    required pulumi.Output<ClusterBrokerNodeGroupInfo> brokerNodeGroupInfo,
    pulumi.Output<ClusterClientAuthentication>? clientAuthentication,
    pulumi.Output<String>? clusterName,
    pulumi.Output<ClusterConfigurationInfo>? configurationInfo,
    pulumi.Output<ClusterEncryptionInfo>? encryptionInfo,
    pulumi.Output<String>? enhancedMonitoring,
    required pulumi.Output<String> kafkaVersion,
    pulumi.Output<ClusterLoggingInfo>? loggingInfo,
    required pulumi.Output<int> numberOfBrokerNodes,
    pulumi.Output<ClusterOpenMonitoring>? openMonitoring,
    pulumi.Output<ClusterRebalancing>? rebalancing,
    pulumi.Output<String>? region,
    pulumi.Output<String>? storageMode,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      brokerNodeGroupInfo = pulumi.Input.asInput<ClusterBrokerNodeGroupInfo>(brokerNodeGroupInfo),
      clientAuthentication = pulumi.Input.asOptionalInput<ClusterClientAuthentication>(clientAuthentication),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      configurationInfo = pulumi.Input.asOptionalInput<ClusterConfigurationInfo>(configurationInfo),
      encryptionInfo = pulumi.Input.asOptionalInput<ClusterEncryptionInfo>(encryptionInfo),
      enhancedMonitoring = pulumi.Input.asOptionalInput<String>(enhancedMonitoring),
      kafkaVersion = pulumi.Input.asInput<String>(kafkaVersion),
      loggingInfo = pulumi.Input.asOptionalInput<ClusterLoggingInfo>(loggingInfo),
      numberOfBrokerNodes = pulumi.Input.asInput<int>(numberOfBrokerNodes),
      openMonitoring = pulumi.Input.asOptionalInput<ClusterOpenMonitoring>(openMonitoring),
      rebalancing = pulumi.Input.asOptionalInput<ClusterRebalancing>(rebalancing),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageMode = pulumi.Input.asOptionalInput<String>(storageMode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerNodeGroupInfo': pulumi.Input.mapInputValue<ClusterBrokerNodeGroupInfo, Map<String, dynamic>>(brokerNodeGroupInfo, (value) => value.toMap()),
      'clientAuthentication': ?pulumi.Input.mapOptionalInputValue<ClusterClientAuthentication, Map<String, dynamic>>(clientAuthentication, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ClusterConfigurationInfo, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'encryptionInfo': ?pulumi.Input.mapOptionalInputValue<ClusterEncryptionInfo, Map<String, dynamic>>(encryptionInfo, (value) => value.toMap()),
      'enhancedMonitoring': ?enhancedMonitoring,
      'kafkaVersion': kafkaVersion,
      'loggingInfo': ?pulumi.Input.mapOptionalInputValue<ClusterLoggingInfo, Map<String, dynamic>>(loggingInfo, (value) => value.toMap()),
      'numberOfBrokerNodes': numberOfBrokerNodes,
      'openMonitoring': ?pulumi.Input.mapOptionalInputValue<ClusterOpenMonitoring, Map<String, dynamic>>(openMonitoring, (value) => value.toMap()),
      'rebalancing': ?pulumi.Input.mapOptionalInputValue<ClusterRebalancing, Map<String, dynamic>>(rebalancing, (value) => value.toMap()),
      'region': ?region,
      'storageMode': ?storageMode,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      brokerNodeGroupInfo: pulumi.Output.create<ClusterBrokerNodeGroupInfo>(ClusterBrokerNodeGroupInfo.fromMap((map['brokerNodeGroupInfo'] as Map).cast<String, dynamic>())),
      clientAuthentication: map['clientAuthentication'] == null ? null : pulumi.Output.create<ClusterClientAuthentication>(ClusterClientAuthentication.fromMap((map['clientAuthentication'] as Map).cast<String, dynamic>())),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      configurationInfo: map['configurationInfo'] == null ? null : pulumi.Output.create<ClusterConfigurationInfo>(ClusterConfigurationInfo.fromMap((map['configurationInfo'] as Map).cast<String, dynamic>())),
      encryptionInfo: map['encryptionInfo'] == null ? null : pulumi.Output.create<ClusterEncryptionInfo>(ClusterEncryptionInfo.fromMap((map['encryptionInfo'] as Map).cast<String, dynamic>())),
      enhancedMonitoring: map['enhancedMonitoring'] == null ? null : pulumi.Output.create<String>(map['enhancedMonitoring'] as String),
      kafkaVersion: pulumi.Output.create<String>(map['kafkaVersion'] as String),
      loggingInfo: map['loggingInfo'] == null ? null : pulumi.Output.create<ClusterLoggingInfo>(ClusterLoggingInfo.fromMap((map['loggingInfo'] as Map).cast<String, dynamic>())),
      numberOfBrokerNodes: pulumi.Output.create<int>(map['numberOfBrokerNodes'] as int),
      openMonitoring: map['openMonitoring'] == null ? null : pulumi.Output.create<ClusterOpenMonitoring>(ClusterOpenMonitoring.fromMap((map['openMonitoring'] as Map).cast<String, dynamic>())),
      rebalancing: map['rebalancing'] == null ? null : pulumi.Output.create<ClusterRebalancing>(ClusterRebalancing.fromMap((map['rebalancing'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageMode: map['storageMode'] == null ? null : pulumi.Output.create<String>(map['storageMode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

