// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_broker_node_group_info/cluster_broker_node_group_info.dart';
import '../cluster_client_authentication/cluster_client_authentication.dart';
import '../cluster_configuration_info/cluster_configuration_info.dart';
import '../cluster_encryption_info/cluster_encryption_info.dart';
import '../cluster_logging_info/cluster_logging_info.dart';
import '../cluster_open_monitoring/cluster_open_monitoring.dart';
import '../cluster_rebalancing/cluster_rebalancing.dart';

/// The set of arguments for Cluster.
class ClusterArgs10 {
  /// Configuration block for the broker nodes of the Kafka cluster. See broker_node_group_info Argument Reference below.
  final Input<ClusterBrokerNodeGroupInfo> brokerNodeGroupInfo;

  /// Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
  final Input<ClusterClientAuthentication>? clientAuthentication;

  /// Name of the MSK cluster.
  final Input<String>? clusterName;

  /// Configuration block for specifying an MSK Configuration to attach to Kafka brokers. See configuration_info Argument Reference below.
  final Input<ClusterConfigurationInfo>? configurationInfo;

  /// Configuration block for specifying encryption. See encryption_info Argument Reference below.
  final Input<ClusterEncryptionInfo>? encryptionInfo;

  /// Specify the desired enhanced MSK CloudWatch monitoring level. See [Monitoring Amazon MSK with Amazon CloudWatch](https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html)
  final Input<String>? enhancedMonitoring;

  /// Specify the desired Kafka software version.
  final Input<String> kafkaVersion;

  /// Configuration block for streaming broker logs to Cloudwatch/S3/Kinesis Firehose. See logging_info Argument Reference below.
  final Input<ClusterLoggingInfo>? loggingInfo;

  /// The desired total number of broker nodes in the kafka cluster.  It must be a multiple of the number of specified client subnets.
  final Input<int> numberOfBrokerNodes;

  /// Configuration block for JMX and Node monitoring for the MSK cluster. See open_monitoring Argument Reference below.
  final Input<ClusterOpenMonitoring>? openMonitoring;

  /// Configuration block for intelligent rebalancing. See rebalancing Argument Reference below. Only applicable to MSK Provisioned clusters with Express brokers.
  final Input<ClusterRebalancing>? rebalancing;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Controls storage mode for supported storage tiers. Valid values are: `LOCAL` or `TIERED`.
  final Input<String>? storageMode;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ClusterArgs10({
    required this.brokerNodeGroupInfo,
    this.clientAuthentication,
    this.clusterName,
    this.configurationInfo,
    this.encryptionInfo,
    this.enhancedMonitoring,
    required this.kafkaVersion,
    this.loggingInfo,
    required this.numberOfBrokerNodes,
    this.openMonitoring,
    this.rebalancing,
    this.region,
    this.storageMode,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brokerNodeGroupInfo'] =
        Input.mapInputValue<ClusterBrokerNodeGroupInfo, Map<String, dynamic>>(
            brokerNodeGroupInfo, (value) => value.toMap());
    final clientAuthenticationValue = clientAuthentication;
    if (clientAuthenticationValue != null) {
      map['clientAuthentication'] = Input.mapOptionalInputValue<
              ClusterClientAuthentication, Map<String, dynamic>>(
          clientAuthenticationValue, (value) => value.toMap());
    }
    final clusterNameValue = clusterName;
    if (clusterNameValue != null) {
      map['clusterName'] = clusterNameValue;
    }
    final configurationInfoValue = configurationInfo;
    if (configurationInfoValue != null) {
      map['configurationInfo'] = Input.mapOptionalInputValue<
              ClusterConfigurationInfo, Map<String, dynamic>>(
          configurationInfoValue, (value) => value.toMap());
    }
    final encryptionInfoValue = encryptionInfo;
    if (encryptionInfoValue != null) {
      map['encryptionInfo'] = Input.mapOptionalInputValue<ClusterEncryptionInfo,
          Map<String, dynamic>>(encryptionInfoValue, (value) => value.toMap());
    }
    final enhancedMonitoringValue = enhancedMonitoring;
    if (enhancedMonitoringValue != null) {
      map['enhancedMonitoring'] = enhancedMonitoringValue;
    }
    map['kafkaVersion'] = kafkaVersion;
    final loggingInfoValue = loggingInfo;
    if (loggingInfoValue != null) {
      map['loggingInfo'] =
          Input.mapOptionalInputValue<ClusterLoggingInfo, Map<String, dynamic>>(
              loggingInfoValue, (value) => value.toMap());
    }
    map['numberOfBrokerNodes'] = numberOfBrokerNodes;
    final openMonitoringValue = openMonitoring;
    if (openMonitoringValue != null) {
      map['openMonitoring'] = Input.mapOptionalInputValue<ClusterOpenMonitoring,
          Map<String, dynamic>>(openMonitoringValue, (value) => value.toMap());
    }
    final rebalancingValue = rebalancing;
    if (rebalancingValue != null) {
      map['rebalancing'] =
          Input.mapOptionalInputValue<ClusterRebalancing, Map<String, dynamic>>(
              rebalancingValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageModeValue = storageMode;
    if (storageModeValue != null) {
      map['storageMode'] = storageModeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterArgs10.fromMap(Map<String, dynamic> map) {
    return ClusterArgs10(
      brokerNodeGroupInfo:
          Input.asInput<ClusterBrokerNodeGroupInfo>(map['brokerNodeGroupInfo']),
      clientAuthentication: Input.asOptionalInput<ClusterClientAuthentication>(
          map['clientAuthentication']),
      clusterName: Input.asOptionalInput<String>(map['clusterName']),
      configurationInfo: Input.asOptionalInput<ClusterConfigurationInfo>(
          map['configurationInfo']),
      encryptionInfo:
          Input.asOptionalInput<ClusterEncryptionInfo>(map['encryptionInfo']),
      enhancedMonitoring:
          Input.asOptionalInput<String>(map['enhancedMonitoring']),
      kafkaVersion: Input.asInput<String>(map['kafkaVersion']),
      loggingInfo:
          Input.asOptionalInput<ClusterLoggingInfo>(map['loggingInfo']),
      numberOfBrokerNodes: Input.asInput<int>(map['numberOfBrokerNodes']),
      openMonitoring:
          Input.asOptionalInput<ClusterOpenMonitoring>(map['openMonitoring']),
      rebalancing:
          Input.asOptionalInput<ClusterRebalancing>(map['rebalancing']),
      region: Input.asOptionalInput<String>(map['region']),
      storageMode: Input.asOptionalInput<String>(map['storageMode']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
