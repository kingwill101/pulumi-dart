// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_bootstrap_action.dart';
import 'cluster_config.dart';
import 'cluster_host_group.dart';
import 'cluster_meta_store_conf.dart';
import 'cluster_modify_cluster_service_config.dart';

/// {@template pulumi_emr_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_emr_cluster_cluster_args_doc}
class ClusterArgs {
  /// Boot action parameters.
  final pulumi.Input<List<ClusterBootstrapAction>>? bootstrapActions;

  /// Charge Type for this cluster. Supported value: PostPaid or PrePaid. Default value: PostPaid.
  final pulumi.Input<String>? chargeType;

  /// EMR Cluster Type, e.g. HADOOP, KAFKA, DRUID, GATEWAY etc. You can find all valid EMR cluster type in emr web console. Supported 'GATEWAY' available in 1.61.0+.
  final pulumi.Input<String> clusterType;

  /// The custom configurations of emr-cluster service.
  final pulumi.Input<List<ClusterConfig>>? configs;

  /// Cluster deposit type, HALF_MANAGED or FULL_MANAGED.
  final pulumi.Input<String>? depositType;

  /// High security cluster (true) or not. Default value is false.
  final pulumi.Input<bool>? easEnable;

  /// EMR Version, e.g. EMR-3.22.0. You can find the all valid EMR Version in emr web console.
  final pulumi.Input<String> emrVer;

  /// High Available for HDFS and YARN. If this is set true, MASTER group must have two nodes.
  final pulumi.Input<bool>? highAvailabilityEnable;

  /// Groups of Host, You can specify MASTER as a group, CORE as a group (just like the above example).
  final pulumi.Input<List<ClusterHostGroup>>? hostGroups;

  /// Whether the MASTER node has a public IP address enabled. Default value is false.
  final pulumi.Input<bool>? isOpenPublicIp;

  /// Ssh key pair.
  final pulumi.Input<String>? keyPairName;

  /// Master ssh password.
  final pulumi.Input<String>? masterPwd;

  /// The configuration of emr-cluster service component metadata storage. If meta store type is ’user_rds’, this should be specified.
  final pulumi.Input<ClusterMetaStoreConf>? metaStoreConf;

  /// The type of emr-cluster service component metadata storage. ’dlf’ or ’local’ or ’user_rds’ .
  final pulumi.Input<String>? metaStoreType;

  /// The configurations of emr-cluster service modification after cluster created.
  final pulumi.Input<ClusterModifyClusterServiceConfig>?
  modifyClusterServiceConfig;

  /// The name of emr cluster. The name length must be less than 64. Supported characters: chinese character, english character, number, "-", "_".
  final pulumi.Input<String>? name;

  /// Optional software list.
  final pulumi.Input<List<String>>? optionSoftwareLists;

  /// If charge type is PrePaid, this should be specified, unit is month. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36.
  final pulumi.Input<int>? period;

  /// This specify the related cluster id, if this cluster is a Gateway.
  final pulumi.Input<String>? relatedClusterId;

  /// The Id of resource group which the emr-cluster belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// Security Group ID for Cluster, you can also specify this key for each host group.
  final pulumi.Input<String>? securityGroupId;

  /// If this is set true, we can ssh into cluster. Default value is false.
  final pulumi.Input<bool>? sshEnable;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Use local metadb. Default is false.
  final pulumi.Input<bool>? useLocalMetadb;

  /// Alicloud EMR uses roles to perform actions on your behalf when provisioning cluster resources, running applications, dynamically scaling resources. EMR uses the following roles when interacting with other Alicloud services. Default value is AliyunEmrEcsDefaultRole.
  final pulumi.Input<String>? userDefinedEmrEcsRole;

  /// Global vswitch id, you can also specify it in host group.
  final pulumi.Input<String>? vswitchId;

  /// Zone ID, e.g. cn-huhehaote-a
  final pulumi.Input<String> zoneId;

  /// Creates a new [ClusterArgs].
  /// [bootstrapActions] Boot action parameters.
  /// [chargeType] Charge Type for this cluster. Supported value: PostPaid or PrePaid. Default value: PostPaid.
  /// [clusterType] EMR Cluster Type, e.g. HADOOP, KAFKA, DRUID, GATEWAY etc. You can find all valid EMR cluster type in emr web console. Supported 'GATEWAY' available in 1.61.0+.
  /// [configs] The custom configurations of emr-cluster service.
  /// [depositType] Cluster deposit type, HALF_MANAGED or FULL_MANAGED.
  /// [easEnable] High security cluster (true) or not. Default value is false.
  /// [emrVer] EMR Version, e.g. EMR-3.22.0. You can find the all valid EMR Version in emr web console.
  /// [highAvailabilityEnable] High Available for HDFS and YARN. If this is set true, MASTER group must have two nodes.
  /// [hostGroups] Groups of Host, You can specify MASTER as a group, CORE as a group (just like the above example).
  /// [isOpenPublicIp] Whether the MASTER node has a public IP address enabled. Default value is false.
  /// [keyPairName] Ssh key pair.
  /// [masterPwd] Master ssh password.
  /// [metaStoreConf] The configuration of emr-cluster service component metadata storage. If meta store type is ’user_rds’, this should be specified.
  /// [metaStoreType] The type of emr-cluster service component metadata storage. ’dlf’ or ’local’ or ’user_rds’ .
  /// [modifyClusterServiceConfig] The configurations of emr-cluster service modification after cluster created.
  /// [name] The name of emr cluster. The name length must be less than 64. Supported characters: chinese character, english character, number, "-", "_".
  /// [optionSoftwareLists] Optional software list.
  /// [period] If charge type is PrePaid, this should be specified, unit is month. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36.
  /// [relatedClusterId] This specify the related cluster id, if this cluster is a Gateway.
  /// [resourceGroupId] The Id of resource group which the emr-cluster belongs.
  /// [securityGroupId] Security Group ID for Cluster, you can also specify this key for each host group.
  /// [sshEnable] If this is set true, we can ssh into cluster. Default value is false.
  /// [tags] A mapping of tags to assign to the resource.
  /// [useLocalMetadb] Use local metadb. Default is false.
  /// [userDefinedEmrEcsRole] Alicloud EMR uses roles to perform actions on your behalf when provisioning cluster resources, running applications, dynamically scaling resources. EMR uses the following roles when interacting with other Alicloud services. Default value is AliyunEmrEcsDefaultRole.
  /// [vswitchId] Global vswitch id, you can also specify it in host group.
  /// [zoneId] Zone ID, e.g. cn-huhehaote-a
  ClusterArgs({
    this.bootstrapActions,
    this.chargeType,
    required this.clusterType,
    this.configs,
    this.depositType,
    this.easEnable,
    required this.emrVer,
    this.highAvailabilityEnable,
    this.hostGroups,
    this.isOpenPublicIp,
    this.keyPairName,
    this.masterPwd,
    this.metaStoreConf,
    this.metaStoreType,
    this.modifyClusterServiceConfig,
    this.name,
    this.optionSoftwareLists,
    this.period,
    this.relatedClusterId,
    this.resourceGroupId,
    this.securityGroupId,
    this.sshEnable,
    this.tags,
    this.useLocalMetadb,
    this.userDefinedEmrEcsRole,
    this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterBootstrapAction>,
            List<Map<String, dynamic>>
          >(
            bootstrapActions,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterBootstrapAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'chargeType': ?chargeType,
      'clusterType': clusterType,
      'configs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterConfig>,
            List<Map<String, dynamic>>
          >(
            configs,
            (value) =>
                pulumi.Input.encodeList<ClusterConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'depositType': ?depositType,
      'easEnable': ?easEnable,
      'emrVer': emrVer,
      'highAvailabilityEnable': ?highAvailabilityEnable,
      'hostGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterHostGroup>,
            List<Map<String, dynamic>>
          >(
            hostGroups,
            (value) =>
                pulumi.Input.encodeList<ClusterHostGroup, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'isOpenPublicIp': ?isOpenPublicIp,
      'keyPairName': ?keyPairName,
      'masterPwd': ?masterPwd,
      'metaStoreConf':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterMetaStoreConf,
            Map<String, dynamic>
          >(metaStoreConf, (value) => value.toMap()),
      'metaStoreType': ?metaStoreType,
      'modifyClusterServiceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterModifyClusterServiceConfig,
            Map<String, dynamic>
          >(modifyClusterServiceConfig, (value) => value.toMap()),
      'name': ?name,
      'optionSoftwareLists': ?optionSoftwareLists,
      'period': ?period,
      'relatedClusterId': ?relatedClusterId,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'sshEnable': ?sshEnable,
      'tags': ?tags,
      'useLocalMetadb': ?useLocalMetadb,
      'userDefinedEmrEcsRole': ?userDefinedEmrEcsRole,
      'vswitchId': ?vswitchId,
      'zoneId': zoneId,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      bootstrapActions: (() {
        final guardedValue = map['bootstrapActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterBootstrapAction>(
            guardedValue,
            (value) => ClusterBootstrapAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      chargeType: (() {
        final guardedValue = map['chargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      configs: (() {
        final guardedValue = map['configs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterConfig>(
            guardedValue,
            (value) =>
                ClusterConfig.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      depositType: (() {
        final guardedValue = map['depositType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      easEnable: (() {
        final guardedValue = map['easEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      emrVer: pulumi.Input.fromValue(map['emrVer'] as String),
      highAvailabilityEnable: (() {
        final guardedValue = map['highAvailabilityEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostGroups: (() {
        final guardedValue = map['hostGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterHostGroup>(
            guardedValue,
            (value) => ClusterHostGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      isOpenPublicIp: (() {
        final guardedValue = map['isOpenPublicIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyPairName: (() {
        final guardedValue = map['keyPairName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterPwd: (() {
        final guardedValue = map['masterPwd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metaStoreConf: (() {
        final guardedValue = map['metaStoreConf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterMetaStoreConf.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      metaStoreType: (() {
        final guardedValue = map['metaStoreType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modifyClusterServiceConfig: (() {
        final guardedValue = map['modifyClusterServiceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterModifyClusterServiceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      optionSoftwareLists: (() {
        final guardedValue = map['optionSoftwareLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      relatedClusterId: (() {
        final guardedValue = map['relatedClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupId: (() {
        final guardedValue = map['securityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshEnable: (() {
        final guardedValue = map['sshEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      useLocalMetadb: (() {
        final guardedValue = map['useLocalMetadb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      userDefinedEmrEcsRole: (() {
        final guardedValue = map['userDefinedEmrEcsRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
