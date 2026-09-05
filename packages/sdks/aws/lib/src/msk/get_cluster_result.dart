// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// ARN of the MSK cluster.
  final String? arn;
  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster. Contains a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `PLAINTEXT` or `TLS_PLAINTEXT`. The resource sorts values alphabetically. AWS may not always return all endpoints so this value is not guaranteed to be stable across applies.
  final String? bootstrapBrokers;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String? bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String? bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-3-public.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `broker_node_group_info.0.connectivity_info.0.public_access.0.type` is set to `SERVICE_PROVIDED_EIPS` and the cluster fulfill all other requirements for public access. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String? bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.iam` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String? bootstrapBrokersSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS` and `client_authentication.0.sasl.0.scram` is set to `true`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String? bootstrapBrokersSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs. For example, `b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094`. This attribute will have a value if `encryption_info.0.encryption_in_transit.0.client_broker` is set to `TLS_PLAINTEXT` or `TLS`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final String? bootstrapBrokersTls;
  /// Configuration block for the broker nodes of the Kafka cluster.
  final List<GetClusterBrokerNodeGroupInfo>? brokerNodeGroupInfos;
  final String? clusterName;
  /// UUID of the MSK cluster, for use in IAM policies.
  final String? clusterUuid;
  /// Status indicating whether Amazon MSK requires customer action for the cluster. Valid values are `NONE`, `ACTION_RECOMMENDED`, and `CRITICAL_ACTION_REQUIRED`.
  final String? customerActionStatus;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Apache Kafka version.
  final String? kafkaVersion;
  /// Number of broker nodes in the cluster.
  final int? numberOfBrokerNodes;
  final String? region;
  /// Map of key-value pairs assigned to the cluster.
  final Map<String, String>? tags;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  final String? zookeeperConnectString;
  /// A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  final String? zookeeperConnectStringTls;

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
  /// [clusterName] Optional.
  /// [clusterUuid] UUID of the MSK cluster, for use in IAM policies.
  /// [customerActionStatus] Status indicating whether Amazon MSK requires customer action for the cluster. Valid values are `NONE`, `ACTION_RECOMMENDED`, and `CRITICAL_ACTION_REQUIRED`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kafkaVersion] Apache Kafka version.
  /// [numberOfBrokerNodes] Number of broker nodes in the cluster.
  /// [region] Optional.
  /// [tags] Map of key-value pairs assigned to the cluster.
  /// [zookeeperConnectString] A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  /// [zookeeperConnectStringTls] A comma separated list of one or more hostname:port pairs to use to connect to the Apache Zookeeper cluster via TLS. The returned values are sorted alphabetically. The AWS API may not return all endpoints, so this value is not guaranteed to be stable across applies.
  const GetClusterResult({
    this.arn,
    this.bootstrapBrokers,
    this.bootstrapBrokersPublicSaslIam,
    this.bootstrapBrokersPublicSaslScram,
    this.bootstrapBrokersPublicTls,
    this.bootstrapBrokersSaslIam,
    this.bootstrapBrokersSaslScram,
    this.bootstrapBrokersTls,
    this.brokerNodeGroupInfos,
    this.clusterName,
    this.clusterUuid,
    this.customerActionStatus,
    this.id,
    this.kafkaVersion,
    this.numberOfBrokerNodes,
    this.region,
    this.tags,
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
      'brokerNodeGroupInfos': ?(() { final guardedValue = brokerNodeGroupInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterName': ?clusterName,
      'clusterUuid': ?clusterUuid,
      'customerActionStatus': ?customerActionStatus,
      'id': ?id,
      'kafkaVersion': ?kafkaVersion,
      'numberOfBrokerNodes': ?numberOfBrokerNodes,
      'region': ?region,
      'tags': ?tags,
      'zookeeperConnectString': ?zookeeperConnectString,
      'zookeeperConnectStringTls': ?zookeeperConnectStringTls,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokers: (() { final guardedValue = map['bootstrapBrokers']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersPublicSaslIam: (() { final guardedValue = map['bootstrapBrokersPublicSaslIam']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersPublicSaslScram: (() { final guardedValue = map['bootstrapBrokersPublicSaslScram']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersPublicTls: (() { final guardedValue = map['bootstrapBrokersPublicTls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersSaslIam: (() { final guardedValue = map['bootstrapBrokersSaslIam']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersSaslScram: (() { final guardedValue = map['bootstrapBrokersSaslScram']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersTls: (() { final guardedValue = map['bootstrapBrokersTls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      brokerNodeGroupInfos: (() { final guardedValue = map['brokerNodeGroupInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfo>(guardedValue, (value) => GetClusterBrokerNodeGroupInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterUuid: (() { final guardedValue = map['clusterUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerActionStatus: (() { final guardedValue = map['customerActionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kafkaVersion: (() { final guardedValue = map['kafkaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numberOfBrokerNodes: (() { final guardedValue = map['numberOfBrokerNodes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zookeeperConnectString: (() { final guardedValue = map['zookeeperConnectString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zookeeperConnectStringTls: (() { final guardedValue = map['zookeeperConnectStringTls']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
