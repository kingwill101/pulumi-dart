// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_application_config.dart';
import 'cluster_bootstrap_script.dart';
import 'cluster_node_attribute.dart';
import 'cluster_node_group.dart';
import 'cluster_subscription_config.dart';

/// {@template pulumi_emrv2_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_emrv2_cluster_cluster_args_doc}
class ClusterArgs {
  /// The application configurations of EMR cluster. See `application_configs` below.
  final pulumi.Input<List<ClusterApplicationConfig>>? applicationConfigs;
  /// The applications of EMR cluster to be installed, e.g. HADOOP-COMMON, HDFS, YARN, HIVE, SPARK2, SPARK3, ZOOKEEPER etc. You can find all valid applications in emr web console.
  final pulumi.Input<List<String>> applications;
  /// The bootstrap scripts to be effected when creating emr-cluster or resize emr-cluster, if priority is not specified, the scripts will execute in the declared order. See `bootstrap_scripts` below.
  final pulumi.Input<List<ClusterBootstrapScript>>? bootstrapScripts;
  /// The name of emr cluster. The name length must be less than 64. Supported characters: chinese character, english character, number, "-", "_".
  final pulumi.Input<String> clusterName;
  /// EMR Cluster Type, e.g. DATALAKE, OLAP, DATAFLOW, DATASERVING, CUSTOM etc. You can find all valid EMR cluster type in emr web console.
  final pulumi.Input<String> clusterType;
  /// The deletion protection of EMR cluster.
  final pulumi.Input<bool>? deletionProtection;
  /// The deploy mode of EMR cluster. Supported value: NORMAL or HA.
  final pulumi.Input<String>? deployMode;
  /// The log collect strategy of EMR cluster.
  final pulumi.Input<String>? logCollectStrategy;
  /// The node attributes of ecs instances which the emr-cluster belongs. See `node_attributes` below.
  final pulumi.Input<List<ClusterNodeAttribute>> nodeAttributes;
  /// Groups of node, You can specify MASTER as a group, CORE as a group (just like the above example). See `node_groups` below. **NOTE:** Since version 1.227.0, the type of `node_groups` changed from Set to List.
  final pulumi.Input<List<ClusterNodeGroup>> nodeGroups;
  /// Payment Type for this cluster. Supported value: PayAsYouGo or Subscription. **NOTE:** From version 1.227.0, `payment_type` can be modified.
  final pulumi.Input<String>? paymentType;
  /// EMR Version, e.g. EMR-5.10.0. You can find the all valid EMR Version in emr web console.
  final pulumi.Input<String> releaseVersion;
  /// The Id of resource group which the emr-cluster belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The security mode of EMR cluster. Supported value: NORMAL or KERBEROS.
  final pulumi.Input<String>? securityMode;
  /// The detail configuration of subscription payment type. See `subscription_config` below.
  final pulumi.Input<ClusterSubscriptionConfig>? subscriptionConfig;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [applicationConfigs] The application configurations of EMR cluster. See `application_configs` below.
  /// [applications] The applications of EMR cluster to be installed, e.g. HADOOP-COMMON, HDFS, YARN, HIVE, SPARK2, SPARK3, ZOOKEEPER etc. You can find all valid applications in emr web console.
  /// [bootstrapScripts] The bootstrap scripts to be effected when creating emr-cluster or resize emr-cluster, if priority is not specified, the scripts will execute in the declared order. See `bootstrap_scripts` below.
  /// [clusterName] The name of emr cluster. The name length must be less than 64. Supported characters: chinese character, english character, number, "-", "_".
  /// [clusterType] EMR Cluster Type, e.g. DATALAKE, OLAP, DATAFLOW, DATASERVING, CUSTOM etc. You can find all valid EMR cluster type in emr web console.
  /// [deletionProtection] The deletion protection of EMR cluster.
  /// [deployMode] The deploy mode of EMR cluster. Supported value: NORMAL or HA.
  /// [logCollectStrategy] The log collect strategy of EMR cluster.
  /// [nodeAttributes] The node attributes of ecs instances which the emr-cluster belongs. See `node_attributes` below.
  /// [nodeGroups] Groups of node, You can specify MASTER as a group, CORE as a group (just like the above example). See `node_groups` below. **NOTE:** Since version 1.227.0, the type of `node_groups` changed from Set to List.
  /// [paymentType] Payment Type for this cluster. Supported value: PayAsYouGo or Subscription. **NOTE:** From version 1.227.0, `payment_type` can be modified.
  /// [releaseVersion] EMR Version, e.g. EMR-5.10.0. You can find the all valid EMR Version in emr web console.
  /// [resourceGroupId] The Id of resource group which the emr-cluster belongs.
  /// [securityMode] The security mode of EMR cluster. Supported value: NORMAL or KERBEROS.
  /// [subscriptionConfig] The detail configuration of subscription payment type. See `subscription_config` below.
  /// [tags] A mapping of tags to assign to the resource.
  ClusterArgs({
    this.applicationConfigs,
    required this.applications,
    this.bootstrapScripts,
    required this.clusterName,
    required this.clusterType,
    this.deletionProtection,
    this.deployMode,
    this.logCollectStrategy,
    required this.nodeAttributes,
    required this.nodeGroups,
    this.paymentType,
    required this.releaseVersion,
    this.resourceGroupId,
    this.securityMode,
    this.subscriptionConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterApplicationConfig>, List<Map<String, dynamic>>>(applicationConfigs, (value) => pulumi.Input.encodeList<ClusterApplicationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applications': applications,
      'bootstrapScripts': ?pulumi.Input.mapOptionalInputValue<List<ClusterBootstrapScript>, List<Map<String, dynamic>>>(bootstrapScripts, (value) => pulumi.Input.encodeList<ClusterBootstrapScript, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterName': clusterName,
      'clusterType': clusterType,
      'deletionProtection': ?deletionProtection,
      'deployMode': ?deployMode,
      'logCollectStrategy': ?logCollectStrategy,
      'nodeAttributes': pulumi.Input.mapInputValue<List<ClusterNodeAttribute>, List<Map<String, dynamic>>>(nodeAttributes, (value) => pulumi.Input.encodeList<ClusterNodeAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeGroups': pulumi.Input.mapInputValue<List<ClusterNodeGroup>, List<Map<String, dynamic>>>(nodeGroups, (value) => pulumi.Input.encodeList<ClusterNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': ?paymentType,
      'releaseVersion': releaseVersion,
      'resourceGroupId': ?resourceGroupId,
      'securityMode': ?securityMode,
      'subscriptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSubscriptionConfig, Map<String, dynamic>>(subscriptionConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      applicationConfigs: (() { final guardedValue = map['applicationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterApplicationConfig>(guardedValue, (value) => ClusterApplicationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applications: pulumi.Input.fromValue((map['applications'] as List).cast<String>()),
      bootstrapScripts: (() { final guardedValue = map['bootstrapScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterBootstrapScript>(guardedValue, (value) => ClusterBootstrapScript.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deployMode: (() { final guardedValue = map['deployMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logCollectStrategy: (() { final guardedValue = map['logCollectStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeAttributes: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeAttribute>(map['nodeAttributes']!, (value) => ClusterNodeAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      nodeGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeGroup>(map['nodeGroups']!, (value) => ClusterNodeGroup.fromMap((value as Map).cast<String, dynamic>()))),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseVersion: pulumi.Input.fromValue(map['releaseVersion'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityMode: (() { final guardedValue = map['securityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionConfig: (() { final guardedValue = map['subscriptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSubscriptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

