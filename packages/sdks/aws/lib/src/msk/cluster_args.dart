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
    return <String, dynamic>{
      'brokerNodeGroupInfo':
          pulumi.Input.mapInputValue<
            ClusterBrokerNodeGroupInfo,
            Map<String, dynamic>
          >(brokerNodeGroupInfo, (value) => value.toMap()),
      'clientAuthentication':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterClientAuthentication,
            Map<String, dynamic>
          >(clientAuthentication, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'configurationInfo':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterConfigurationInfo,
            Map<String, dynamic>
          >(configurationInfo, (value) => value.toMap()),
      'encryptionInfo':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterEncryptionInfo,
            Map<String, dynamic>
          >(encryptionInfo, (value) => value.toMap()),
      'enhancedMonitoring': ?enhancedMonitoring,
      'kafkaVersion': kafkaVersion,
      'loggingInfo':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterLoggingInfo,
            Map<String, dynamic>
          >(loggingInfo, (value) => value.toMap()),
      'numberOfBrokerNodes': numberOfBrokerNodes,
      'openMonitoring':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterOpenMonitoring,
            Map<String, dynamic>
          >(openMonitoring, (value) => value.toMap()),
      'rebalancing':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterRebalancing,
            Map<String, dynamic>
          >(rebalancing, (value) => value.toMap()),
      'region': ?region,
      'storageMode': ?storageMode,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      brokerNodeGroupInfo: pulumi.Input.fromValue(
        ClusterBrokerNodeGroupInfo.fromMap(
          (map['brokerNodeGroupInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      clientAuthentication: (() {
        final guardedValue = map['clientAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterClientAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configurationInfo: (() {
        final guardedValue = map['configurationInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterConfigurationInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      encryptionInfo: (() {
        final guardedValue = map['encryptionInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterEncryptionInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enhancedMonitoring: (() {
        final guardedValue = map['enhancedMonitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kafkaVersion: pulumi.Input.fromValue(map['kafkaVersion'] as String),
      loggingInfo: (() {
        final guardedValue = map['loggingInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterLoggingInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      numberOfBrokerNodes: pulumi.Input.fromValue(
        map['numberOfBrokerNodes'] as int,
      ),
      openMonitoring: (() {
        final guardedValue = map['openMonitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterOpenMonitoring.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rebalancing: (() {
        final guardedValue = map['rebalancing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterRebalancing.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageMode: (() {
        final guardedValue = map['storageMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
