// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info.dart';
import 'cluster_client_authentication.dart';
import 'cluster_configuration_info.dart';
import 'cluster_encryption_info.dart';
import 'cluster_logging_info.dart';
import 'cluster_open_monitoring.dart';
import 'cluster_rebalancing.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  final pulumi.Input<String>? arn;
  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  final pulumi.Input<String>? bootstrapBrokers;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersTls;
  /// A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersVpcConnectivitySaslIam;
  /// A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersVpcConnectivitySaslScram;
  /// A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersVpcConnectivityTls;
  /// Configuration block for the broker nodes of the Kafka cluster. See broker_node_group_info Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfo>? brokerNodeGroupInfo;
  /// Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
  final pulumi.Input<ClusterClientAuthentication>? clientAuthentication;
  /// Name of the MSK cluster.
  final pulumi.Input<String>? clusterName;
  /// UUID of the MSK cluster, for use in IAM policies.
  final pulumi.Input<String>? clusterUuid;
  /// Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configuration_info Argument Reference below.
  final pulumi.Input<ClusterConfigurationInfo>? configurationInfo;
  /// Current version of the MSK Cluster used for updates, e.g., `K13V1IB3VIYZZH`
  final pulumi.Input<String>? currentVersion;
  /// Configuration block for specifying encryption. See encryption_info Argument Reference below.
  final pulumi.Input<ClusterEncryptionInfo>? encryptionInfo;
  /// Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  final pulumi.Input<String>? enhancedMonitoring;
  /// Specify the desired Kafka software version.
  final pulumi.Input<String>? kafkaVersion;
  /// Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See logging_info Argument Reference below.
  final pulumi.Input<ClusterLoggingInfo>? loggingInfo;
  /// The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  final pulumi.Input<int>? numberOfBrokerNodes;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  final pulumi.Input<String>? zookeeperConnectString;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  final pulumi.Input<String>? zookeeperConnectStringTls;

  /// Creates a new [ClusterState].
  /// [arn] Amazon Resource Name (ARN) of the MSK cluster.
  /// [bootstrapBrokers] Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  /// [bootstrapBrokersPublicSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersPublicSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersPublicTls] One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersTls] One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersVpcConnectivitySaslIam] A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersVpcConnectivitySaslScram] A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersVpcConnectivityTls] A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [brokerNodeGroupInfo] Configuration block for the broker nodes of the Kafka cluster. See broker_node_group_info Argument Reference below.
  /// [clientAuthentication] Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
  /// [clusterName] Name of the MSK cluster.
  /// [clusterUuid] UUID of the MSK cluster, for use in IAM policies.
  /// [configurationInfo] Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configuration_info Argument Reference below.
  /// [currentVersion] Current version of the MSK Cluster used for updates, e.g., `K13V1IB3VIYZZH`
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [zookeeperConnectString] A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  /// [zookeeperConnectStringTls] A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  ClusterState({
    this.arn,
    this.bootstrapBrokers,
    this.bootstrapBrokersPublicSaslIam,
    this.bootstrapBrokersPublicSaslScram,
    this.bootstrapBrokersPublicTls,
    this.bootstrapBrokersSaslIam,
    this.bootstrapBrokersSaslScram,
    this.bootstrapBrokersTls,
    this.bootstrapBrokersVpcConnectivitySaslIam,
    this.bootstrapBrokersVpcConnectivitySaslScram,
    this.bootstrapBrokersVpcConnectivityTls,
    this.brokerNodeGroupInfo,
    this.clientAuthentication,
    this.clusterName,
    this.clusterUuid,
    this.configurationInfo,
    this.currentVersion,
    this.encryptionInfo,
    this.enhancedMonitoring,
    this.kafkaVersion,
    this.loggingInfo,
    this.numberOfBrokerNodes,
    this.openMonitoring,
    this.rebalancing,
    this.region,
    this.storageMode,
    this.tags,
    this.tagsAll,
    this.zookeeperConnectString,
    this.zookeeperConnectStringTls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bootstrapBrokers': ?bootstrapBrokers,
      'bootstrapBrokersPublicSaslIam': ?bootstrapBrokersPublicSaslIam,
      'bootstrapBrokersPublicSaslScram': ?bootstrapBrokersPublicSaslScram,
      'bootstrapBrokersPublicTls': ?bootstrapBrokersPublicTls,
      'bootstrapBrokersSaslIam': ?bootstrapBrokersSaslIam,
      'bootstrapBrokersSaslScram': ?bootstrapBrokersSaslScram,
      'bootstrapBrokersTls': ?bootstrapBrokersTls,
      'bootstrapBrokersVpcConnectivitySaslIam': ?bootstrapBrokersVpcConnectivitySaslIam,
      'bootstrapBrokersVpcConnectivitySaslScram': ?bootstrapBrokersVpcConnectivitySaslScram,
      'bootstrapBrokersVpcConnectivityTls': ?bootstrapBrokersVpcConnectivityTls,
      'brokerNodeGroupInfo': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerNodeGroupInfo, Map<String, dynamic>>(brokerNodeGroupInfo, (value) => value.toMap()),
      'clientAuthentication': ?pulumi.Input.mapOptionalInputValue<ClusterClientAuthentication, Map<String, dynamic>>(clientAuthentication, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'clusterUuid': ?clusterUuid,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ClusterConfigurationInfo, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'currentVersion': ?currentVersion,
      'encryptionInfo': ?pulumi.Input.mapOptionalInputValue<ClusterEncryptionInfo, Map<String, dynamic>>(encryptionInfo, (value) => value.toMap()),
      'enhancedMonitoring': ?enhancedMonitoring,
      'kafkaVersion': ?kafkaVersion,
      'loggingInfo': ?pulumi.Input.mapOptionalInputValue<ClusterLoggingInfo, Map<String, dynamic>>(loggingInfo, (value) => value.toMap()),
      'numberOfBrokerNodes': ?numberOfBrokerNodes,
      'openMonitoring': ?pulumi.Input.mapOptionalInputValue<ClusterOpenMonitoring, Map<String, dynamic>>(openMonitoring, (value) => value.toMap()),
      'rebalancing': ?pulumi.Input.mapOptionalInputValue<ClusterRebalancing, Map<String, dynamic>>(rebalancing, (value) => value.toMap()),
      'region': ?region,
      'storageMode': ?storageMode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'zookeeperConnectString': ?zookeeperConnectString,
      'zookeeperConnectStringTls': ?zookeeperConnectStringTls,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      bootstrapBrokers: map['bootstrapBrokers'] == null ? null : (map['bootstrapBrokers'] as String).input(),
      bootstrapBrokersPublicSaslIam: map['bootstrapBrokersPublicSaslIam'] == null ? null : (map['bootstrapBrokersPublicSaslIam'] as String).input(),
      bootstrapBrokersPublicSaslScram: map['bootstrapBrokersPublicSaslScram'] == null ? null : (map['bootstrapBrokersPublicSaslScram'] as String).input(),
      bootstrapBrokersPublicTls: map['bootstrapBrokersPublicTls'] == null ? null : (map['bootstrapBrokersPublicTls'] as String).input(),
      bootstrapBrokersSaslIam: map['bootstrapBrokersSaslIam'] == null ? null : (map['bootstrapBrokersSaslIam'] as String).input(),
      bootstrapBrokersSaslScram: map['bootstrapBrokersSaslScram'] == null ? null : (map['bootstrapBrokersSaslScram'] as String).input(),
      bootstrapBrokersTls: map['bootstrapBrokersTls'] == null ? null : (map['bootstrapBrokersTls'] as String).input(),
      bootstrapBrokersVpcConnectivitySaslIam: map['bootstrapBrokersVpcConnectivitySaslIam'] == null ? null : (map['bootstrapBrokersVpcConnectivitySaslIam'] as String).input(),
      bootstrapBrokersVpcConnectivitySaslScram: map['bootstrapBrokersVpcConnectivitySaslScram'] == null ? null : (map['bootstrapBrokersVpcConnectivitySaslScram'] as String).input(),
      bootstrapBrokersVpcConnectivityTls: map['bootstrapBrokersVpcConnectivityTls'] == null ? null : (map['bootstrapBrokersVpcConnectivityTls'] as String).input(),
      brokerNodeGroupInfo: map['brokerNodeGroupInfo'] == null ? null : (ClusterBrokerNodeGroupInfo.fromMap((map['brokerNodeGroupInfo'] as Map).cast<String, dynamic>())).input(),
      clientAuthentication: map['clientAuthentication'] == null ? null : (ClusterClientAuthentication.fromMap((map['clientAuthentication'] as Map).cast<String, dynamic>())).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      clusterUuid: map['clusterUuid'] == null ? null : (map['clusterUuid'] as String).input(),
      configurationInfo: map['configurationInfo'] == null ? null : (ClusterConfigurationInfo.fromMap((map['configurationInfo'] as Map).cast<String, dynamic>())).input(),
      currentVersion: map['currentVersion'] == null ? null : (map['currentVersion'] as String).input(),
      encryptionInfo: map['encryptionInfo'] == null ? null : (ClusterEncryptionInfo.fromMap((map['encryptionInfo'] as Map).cast<String, dynamic>())).input(),
      enhancedMonitoring: map['enhancedMonitoring'] == null ? null : (map['enhancedMonitoring'] as String).input(),
      kafkaVersion: map['kafkaVersion'] == null ? null : (map['kafkaVersion'] as String).input(),
      loggingInfo: map['loggingInfo'] == null ? null : (ClusterLoggingInfo.fromMap((map['loggingInfo'] as Map).cast<String, dynamic>())).input(),
      numberOfBrokerNodes: map['numberOfBrokerNodes'] == null ? null : (map['numberOfBrokerNodes'] as int).input(),
      openMonitoring: map['openMonitoring'] == null ? null : (ClusterOpenMonitoring.fromMap((map['openMonitoring'] as Map).cast<String, dynamic>())).input(),
      rebalancing: map['rebalancing'] == null ? null : (ClusterRebalancing.fromMap((map['rebalancing'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      storageMode: map['storageMode'] == null ? null : (map['storageMode'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      zookeeperConnectString: map['zookeeperConnectString'] == null ? null : (map['zookeeperConnectString'] as String).input(),
      zookeeperConnectStringTls: map['zookeeperConnectStringTls'] == null ? null : (map['zookeeperConnectStringTls'] as String).input(),
    );
  }
}

