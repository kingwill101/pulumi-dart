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
  /// One or more IPv6 DNS names (or IP addresses) and plaintext port pairs. For example, `2001:db8:1234:1a00:*:80,2001:db8:1234:1a02:*:80,2001:db8:1234:1a04:*:80`. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersIpv6;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersSaslIam;
  /// One or more IPv6 DNS names (or IP addresses) and SASL IAM port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersSaslIamIpv6;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersSaslScram;
  /// One or more IPv6 DNS names (or IP addresses) and SASL SCRAM port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersSaslScramIpv6;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersTls;
  /// One or more IPv6 DNS names (or IP addresses) and TLS port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersTlsIpv6;
  /// A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersVpcConnectivitySaslIam;
  /// A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersVpcConnectivitySaslScram;
  /// A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersVpcConnectivityTls;
  /// Configuration block for the broker nodes of the Kafka cluster. See brokerNodeGroupInfo Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfo>? brokerNodeGroupInfo;
  /// Configuration block for specifying a client authentication. See clientAuthentication Argument Reference below.
  final pulumi.Input<ClusterClientAuthentication>? clientAuthentication;
  /// Name of the MSK cluster.
  final pulumi.Input<String>? clusterName;
  /// UUID of the MSK cluster, for use in IAM policies.
  final pulumi.Input<String>? clusterUuid;
  /// Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configurationInfo Argument Reference below.
  final pulumi.Input<ClusterConfigurationInfo>? configurationInfo;
  /// Current version of the MSK Cluster used for updates, e.g., `K13V1IB3VIYZZH`
  final pulumi.Input<String>? currentVersion;
  /// Status indicating whether Amazon MSK requires customer action for the cluster. Valid values are `NONE`, `ACTION_RECOMMENDED`, and `CRITICAL_ACTION_REQUIRED`.
  final pulumi.Input<String>? customerActionStatus;
  /// Configuration block for specifying encryption. See encryptionInfo Argument Reference below.
  final pulumi.Input<ClusterEncryptionInfo>? encryptionInfo;
  /// Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  final pulumi.Input<String>? enhancedMonitoring;
  /// Specify the desired Kafka software version.
  final pulumi.Input<String>? kafkaVersion;
  /// Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See loggingInfo Argument Reference below.
  final pulumi.Input<ClusterLoggingInfo>? loggingInfo;
  /// The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  final pulumi.Input<int>? numberOfBrokerNodes;
  /// Configuration block for JMX and Node monitoring for the MSK cluster. See openMonitoring Argument Reference below.
  final pulumi.Input<ClusterOpenMonitoring>? openMonitoring;
  /// Configuration block for intelligent rebalancing. See rebalancing Argument Reference below. Only applicable to MSK Provisioned clusters with Express brokers.
  final pulumi.Input<ClusterRebalancing>? rebalancing;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Controls storage mode for supported storage tiers. Valid values are: `LOCAL` or `TIERED`.
  final pulumi.Input<String>? storageMode;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  final pulumi.Input<String>? zookeeperConnectString;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  final pulumi.Input<String>? zookeeperConnectStringTls;

  /// Creates a new [ClusterState].
  /// [arn] Amazon Resource Name (ARN) of the MSK cluster.
  /// [bootstrapBrokers] Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  /// [bootstrapBrokersIpv6] One or more IPv6 DNS names (or IP addresses) and plaintext port pairs. For example, `2001:db8:1234:1a00:*:80,2001:db8:1234:1a02:*:80,2001:db8:1234:1a04:*:80`. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersPublicSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersPublicSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersPublicTls] One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersSaslIamIpv6] One or more IPv6 DNS names (or IP addresses) and SASL IAM port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersSaslScramIpv6] One or more IPv6 DNS names (or IP addresses) and SASL SCRAM port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersTls] One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersTlsIpv6] One or more IPv6 DNS names (or IP addresses) and TLS port pairs. This attribute will have a value if the cluster is configured with `broker_node_group_info.0.connectivity_info.0.network_type` set to `DUAL` and `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersVpcConnectivitySaslIam] A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersVpcConnectivitySaslScram] A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersVpcConnectivityTls] A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [brokerNodeGroupInfo] Configuration block for the broker nodes of the Kafka cluster. See brokerNodeGroupInfo Argument Reference below.
  /// [clientAuthentication] Configuration block for specifying a client authentication. See clientAuthentication Argument Reference below.
  /// [clusterName] Name of the MSK cluster.
  /// [clusterUuid] UUID of the MSK cluster, for use in IAM policies.
  /// [configurationInfo] Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configurationInfo Argument Reference below.
  /// [currentVersion] Current version of the MSK Cluster used for updates, e.g., `K13V1IB3VIYZZH`
  /// [customerActionStatus] Status indicating whether Amazon MSK requires customer action for the cluster. Valid values are `NONE`, `ACTION_RECOMMENDED`, and `CRITICAL_ACTION_REQUIRED`.
  /// [encryptionInfo] Configuration block for specifying encryption. See encryptionInfo Argument Reference below.
  /// [enhancedMonitoring] Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  /// [kafkaVersion] Specify the desired Kafka software version.
  /// [loggingInfo] Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See loggingInfo Argument Reference below.
  /// [numberOfBrokerNodes] The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  /// [openMonitoring] Configuration block for JMX and Node monitoring for the MSK cluster. See openMonitoring Argument Reference below.
  /// [rebalancing] Configuration block for intelligent rebalancing. See rebalancing Argument Reference below. Only applicable to MSK Provisioned clusters with Express brokers.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageMode] Controls storage mode for supported storage tiers. Valid values are: `LOCAL` or `TIERED`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [zookeeperConnectString] A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  /// [zookeeperConnectStringTls] A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  const ClusterState({
    this.arn,
    this.bootstrapBrokers,
    this.bootstrapBrokersIpv6,
    this.bootstrapBrokersPublicSaslIam,
    this.bootstrapBrokersPublicSaslScram,
    this.bootstrapBrokersPublicTls,
    this.bootstrapBrokersSaslIam,
    this.bootstrapBrokersSaslIamIpv6,
    this.bootstrapBrokersSaslScram,
    this.bootstrapBrokersSaslScramIpv6,
    this.bootstrapBrokersTls,
    this.bootstrapBrokersTlsIpv6,
    this.bootstrapBrokersVpcConnectivitySaslIam,
    this.bootstrapBrokersVpcConnectivitySaslScram,
    this.bootstrapBrokersVpcConnectivityTls,
    this.brokerNodeGroupInfo,
    this.clientAuthentication,
    this.clusterName,
    this.clusterUuid,
    this.configurationInfo,
    this.currentVersion,
    this.customerActionStatus,
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
      'bootstrapBrokersIpv6': ?bootstrapBrokersIpv6,
      'bootstrapBrokersPublicSaslIam': ?bootstrapBrokersPublicSaslIam,
      'bootstrapBrokersPublicSaslScram': ?bootstrapBrokersPublicSaslScram,
      'bootstrapBrokersPublicTls': ?bootstrapBrokersPublicTls,
      'bootstrapBrokersSaslIam': ?bootstrapBrokersSaslIam,
      'bootstrapBrokersSaslIamIpv6': ?bootstrapBrokersSaslIamIpv6,
      'bootstrapBrokersSaslScram': ?bootstrapBrokersSaslScram,
      'bootstrapBrokersSaslScramIpv6': ?bootstrapBrokersSaslScramIpv6,
      'bootstrapBrokersTls': ?bootstrapBrokersTls,
      'bootstrapBrokersTlsIpv6': ?bootstrapBrokersTlsIpv6,
      'bootstrapBrokersVpcConnectivitySaslIam': ?bootstrapBrokersVpcConnectivitySaslIam,
      'bootstrapBrokersVpcConnectivitySaslScram': ?bootstrapBrokersVpcConnectivitySaslScram,
      'bootstrapBrokersVpcConnectivityTls': ?bootstrapBrokersVpcConnectivityTls,
      'brokerNodeGroupInfo': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerNodeGroupInfo, Map<String, dynamic>>(brokerNodeGroupInfo, (value) => value.toMap()),
      'clientAuthentication': ?pulumi.Input.mapOptionalInputValue<ClusterClientAuthentication, Map<String, dynamic>>(clientAuthentication, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'clusterUuid': ?clusterUuid,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ClusterConfigurationInfo, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'currentVersion': ?currentVersion,
      'customerActionStatus': ?customerActionStatus,
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokers: (() { final guardedValue = map['bootstrapBrokers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersIpv6: (() { final guardedValue = map['bootstrapBrokersIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersPublicSaslIam: (() { final guardedValue = map['bootstrapBrokersPublicSaslIam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersPublicSaslScram: (() { final guardedValue = map['bootstrapBrokersPublicSaslScram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersPublicTls: (() { final guardedValue = map['bootstrapBrokersPublicTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersSaslIam: (() { final guardedValue = map['bootstrapBrokersSaslIam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersSaslIamIpv6: (() { final guardedValue = map['bootstrapBrokersSaslIamIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersSaslScram: (() { final guardedValue = map['bootstrapBrokersSaslScram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersSaslScramIpv6: (() { final guardedValue = map['bootstrapBrokersSaslScramIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersTls: (() { final guardedValue = map['bootstrapBrokersTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersTlsIpv6: (() { final guardedValue = map['bootstrapBrokersTlsIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersVpcConnectivitySaslIam: (() { final guardedValue = map['bootstrapBrokersVpcConnectivitySaslIam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersVpcConnectivitySaslScram: (() { final guardedValue = map['bootstrapBrokersVpcConnectivitySaslScram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapBrokersVpcConnectivityTls: (() { final guardedValue = map['bootstrapBrokersVpcConnectivityTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      brokerNodeGroupInfo: (() { final guardedValue = map['brokerNodeGroupInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterBrokerNodeGroupInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientAuthentication: (() { final guardedValue = map['clientAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterUuid: (() { final guardedValue = map['clusterUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationInfo: (() { final guardedValue = map['configurationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currentVersion: (() { final guardedValue = map['currentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerActionStatus: (() { final guardedValue = map['customerActionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionInfo: (() { final guardedValue = map['encryptionInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterEncryptionInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enhancedMonitoring: (() { final guardedValue = map['enhancedMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaVersion: (() { final guardedValue = map['kafkaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingInfo: (() { final guardedValue = map['loggingInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterLoggingInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numberOfBrokerNodes: (() { final guardedValue = map['numberOfBrokerNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      openMonitoring: (() { final guardedValue = map['openMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterOpenMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rebalancing: (() { final guardedValue = map['rebalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRebalancing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMode: (() { final guardedValue = map['storageMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zookeeperConnectString: (() { final guardedValue = map['zookeeperConnectString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zookeeperConnectStringTls: (() { final guardedValue = map['zookeeperConnectStringTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
