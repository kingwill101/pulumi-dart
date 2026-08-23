// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// ARN of the MSK cluster.
  final String arn;
  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  final String bootstrapBrokers;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String bootstrapBrokersSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String bootstrapBrokersSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String bootstrapBrokersTls;
  /// Configuration block for the broker nodes of the Kafka cluster.
  final List<GetClusterBrokerNodeGroupInfo> brokerNodeGroupInfos;
  final String clusterName;
  /// UUID of the MSK cluster, for use in IAM policies.
  final String clusterUuid;
  /// Status indicating whether Amazon MSK requires customer action for the cluster. Valid values are `NONE`, `ACTION_RECOMMENDED`, and `CRITICAL_ACTION_REQUIRED`.
  final String customerActionStatus;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Apache Kafka version.
  final String kafkaVersion;
  /// Number of broker nodes in the cluster.
  final int numberOfBrokerNodes;
  final String region;
  /// Map of key-value pairs assigned to the cluster.
  final Map<String, String> tags;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  final String zookeeperConnectString;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  final String zookeeperConnectStringTls;

  /// Creates a new [GetClusterResult].
  /// [arn] ARN of the MSK cluster.
  /// [bootstrapBrokers] Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  /// [bootstrapBrokersPublicSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersPublicSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersPublicTls] One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [bootstrapBrokersTls] One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [brokerNodeGroupInfos] Configuration block for the broker nodes of the Kafka cluster.
  /// [clusterName] Required.
  /// [clusterUuid] UUID of the MSK cluster, for use in IAM policies.
  /// [customerActionStatus] Status indicating whether Amazon MSK requires customer action for the cluster. Valid values are `NONE`, `ACTION_RECOMMENDED`, and `CRITICAL_ACTION_REQUIRED`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kafkaVersion] Apache Kafka version.
  /// [numberOfBrokerNodes] Number of broker nodes in the cluster.
  /// [region] Required.
  /// [tags] Map of key-value pairs assigned to the cluster.
  /// [zookeeperConnectString] A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  /// [zookeeperConnectStringTls] A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  const GetClusterResult({
    required this.arn,
    required this.bootstrapBrokers,
    required this.bootstrapBrokersPublicSaslIam,
    required this.bootstrapBrokersPublicSaslScram,
    required this.bootstrapBrokersPublicTls,
    required this.bootstrapBrokersSaslIam,
    required this.bootstrapBrokersSaslScram,
    required this.bootstrapBrokersTls,
    required this.brokerNodeGroupInfos,
    required this.clusterName,
    required this.clusterUuid,
    required this.customerActionStatus,
    required this.id,
    required this.kafkaVersion,
    required this.numberOfBrokerNodes,
    required this.region,
    required this.tags,
    required this.zookeeperConnectString,
    required this.zookeeperConnectStringTls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'bootstrapBrokers': bootstrapBrokers,
      'bootstrapBrokersPublicSaslIam': bootstrapBrokersPublicSaslIam,
      'bootstrapBrokersPublicSaslScram': bootstrapBrokersPublicSaslScram,
      'bootstrapBrokersPublicTls': bootstrapBrokersPublicTls,
      'bootstrapBrokersSaslIam': bootstrapBrokersSaslIam,
      'bootstrapBrokersSaslScram': bootstrapBrokersSaslScram,
      'bootstrapBrokersTls': bootstrapBrokersTls,
      'brokerNodeGroupInfos': pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfo, Map<String, dynamic>>(brokerNodeGroupInfos, (value) => value.toMap()),
      'clusterName': clusterName,
      'clusterUuid': clusterUuid,
      'customerActionStatus': customerActionStatus,
      'id': id,
      'kafkaVersion': kafkaVersion,
      'numberOfBrokerNodes': numberOfBrokerNodes,
      'region': region,
      'tags': tags,
      'zookeeperConnectString': zookeeperConnectString,
      'zookeeperConnectStringTls': zookeeperConnectStringTls,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      arn: map['arn'] as String,
      bootstrapBrokers: map['bootstrapBrokers'] as String,
      bootstrapBrokersPublicSaslIam: map['bootstrapBrokersPublicSaslIam'] as String,
      bootstrapBrokersPublicSaslScram: map['bootstrapBrokersPublicSaslScram'] as String,
      bootstrapBrokersPublicTls: map['bootstrapBrokersPublicTls'] as String,
      bootstrapBrokersSaslIam: map['bootstrapBrokersSaslIam'] as String,
      bootstrapBrokersSaslScram: map['bootstrapBrokersSaslScram'] as String,
      bootstrapBrokersTls: map['bootstrapBrokersTls'] as String,
      brokerNodeGroupInfos: pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfo>(map['brokerNodeGroupInfos']!, (value) => GetClusterBrokerNodeGroupInfo.fromMap((value as Map).cast<String, dynamic>())),
      clusterName: map['clusterName'] as String,
      clusterUuid: map['clusterUuid'] as String,
      customerActionStatus: map['customerActionStatus'] as String,
      id: map['id'] as String,
      kafkaVersion: map['kafkaVersion'] as String,
      numberOfBrokerNodes: map['numberOfBrokerNodes'] as int,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zookeeperConnectString: map['zookeeperConnectString'] as String,
      zookeeperConnectStringTls: map['zookeeperConnectStringTls'] as String,
    );
  }
}
