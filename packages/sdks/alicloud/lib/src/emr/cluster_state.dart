// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_bootstrap_action.dart';
import 'cluster_config.dart';
import 'cluster_host_group.dart';
import 'cluster_meta_store_conf.dart';
import 'cluster_modify_cluster_service_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Boot action parameters.
  final pulumi.Input<List<ClusterBootstrapAction>>? bootstrapActions;
  /// Charge Type for this cluster. Supported value: PostPaid or PrePaid. Default value: PostPaid.
  final pulumi.Input<String>? chargeType;
  /// EMR Cluster Type, e.g. HADOOP, KAFKA, DRUID, GATEWAY etc. You can find all valid EMR cluster type in emr web console. Supported 'GATEWAY' available in 1.61.0+.
  final pulumi.Input<String>? clusterType;
  /// The custom configurations of emr-cluster service.
  final pulumi.Input<List<ClusterConfig>>? configs;
  /// Cluster deposit type, HALF_MANAGED or FULL_MANAGED.
  final pulumi.Input<String>? depositType;
  /// High security cluster (true) or not. Default value is false.
  final pulumi.Input<bool>? easEnable;
  /// EMR Version, e.g. EMR-3.22.0. You can find the all valid EMR Version in emr web console.
  final pulumi.Input<String>? emrVer;
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
  final pulumi.Input<ClusterModifyClusterServiceConfig>? modifyClusterServiceConfig;
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
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClusterState].
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
  ClusterState({
    pulumi.Output<List<ClusterBootstrapAction>>? bootstrapActions,
    pulumi.Output<String>? chargeType,
    pulumi.Output<String>? clusterType,
    pulumi.Output<List<ClusterConfig>>? configs,
    pulumi.Output<String>? depositType,
    pulumi.Output<bool>? easEnable,
    pulumi.Output<String>? emrVer,
    pulumi.Output<bool>? highAvailabilityEnable,
    pulumi.Output<List<ClusterHostGroup>>? hostGroups,
    pulumi.Output<bool>? isOpenPublicIp,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? masterPwd,
    pulumi.Output<ClusterMetaStoreConf>? metaStoreConf,
    pulumi.Output<String>? metaStoreType,
    pulumi.Output<ClusterModifyClusterServiceConfig>? modifyClusterServiceConfig,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? optionSoftwareLists,
    pulumi.Output<int>? period,
    pulumi.Output<String>? relatedClusterId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<bool>? sshEnable,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? useLocalMetadb,
    pulumi.Output<String>? userDefinedEmrEcsRole,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      bootstrapActions = pulumi.Input.asOptionalInput<List<ClusterBootstrapAction>>(bootstrapActions),
      chargeType = pulumi.Input.asOptionalInput<String>(chargeType),
      clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
      configs = pulumi.Input.asOptionalInput<List<ClusterConfig>>(configs),
      depositType = pulumi.Input.asOptionalInput<String>(depositType),
      easEnable = pulumi.Input.asOptionalInput<bool>(easEnable),
      emrVer = pulumi.Input.asOptionalInput<String>(emrVer),
      highAvailabilityEnable = pulumi.Input.asOptionalInput<bool>(highAvailabilityEnable),
      hostGroups = pulumi.Input.asOptionalInput<List<ClusterHostGroup>>(hostGroups),
      isOpenPublicIp = pulumi.Input.asOptionalInput<bool>(isOpenPublicIp),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      masterPwd = pulumi.Input.asOptionalInput<String>(masterPwd),
      metaStoreConf = pulumi.Input.asOptionalInput<ClusterMetaStoreConf>(metaStoreConf),
      metaStoreType = pulumi.Input.asOptionalInput<String>(metaStoreType),
      modifyClusterServiceConfig = pulumi.Input.asOptionalInput<ClusterModifyClusterServiceConfig>(modifyClusterServiceConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      optionSoftwareLists = pulumi.Input.asOptionalInput<List<String>>(optionSoftwareLists),
      period = pulumi.Input.asOptionalInput<int>(period),
      relatedClusterId = pulumi.Input.asOptionalInput<String>(relatedClusterId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      sshEnable = pulumi.Input.asOptionalInput<bool>(sshEnable),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      useLocalMetadb = pulumi.Input.asOptionalInput<bool>(useLocalMetadb),
      userDefinedEmrEcsRole = pulumi.Input.asOptionalInput<String>(userDefinedEmrEcsRole),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapActions': ?pulumi.Input.mapOptionalInputValue<List<ClusterBootstrapAction>, List<Map<String, dynamic>>>(bootstrapActions, (value) => pulumi.Input.encodeList<ClusterBootstrapAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chargeType': ?chargeType,
      'clusterType': ?clusterType,
      'configs': ?pulumi.Input.mapOptionalInputValue<List<ClusterConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<ClusterConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'depositType': ?depositType,
      'easEnable': ?easEnable,
      'emrVer': ?emrVer,
      'highAvailabilityEnable': ?highAvailabilityEnable,
      'hostGroups': ?pulumi.Input.mapOptionalInputValue<List<ClusterHostGroup>, List<Map<String, dynamic>>>(hostGroups, (value) => pulumi.Input.encodeList<ClusterHostGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isOpenPublicIp': ?isOpenPublicIp,
      'keyPairName': ?keyPairName,
      'masterPwd': ?masterPwd,
      'metaStoreConf': ?pulumi.Input.mapOptionalInputValue<ClusterMetaStoreConf, Map<String, dynamic>>(metaStoreConf, (value) => value.toMap()),
      'metaStoreType': ?metaStoreType,
      'modifyClusterServiceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterModifyClusterServiceConfig, Map<String, dynamic>>(modifyClusterServiceConfig, (value) => value.toMap()),
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
      'zoneId': ?zoneId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      bootstrapActions: map['bootstrapActions'] == null ? null : pulumi.Output.create<List<ClusterBootstrapAction>>(pulumi.Input.decodeList<ClusterBootstrapAction>(map['bootstrapActions'], (value) => ClusterBootstrapAction.fromMap((value as Map).cast<String, dynamic>()))),
      chargeType: map['chargeType'] == null ? null : pulumi.Output.create<String>(map['chargeType'] as String),
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<String>(map['clusterType'] as String),
      configs: map['configs'] == null ? null : pulumi.Output.create<List<ClusterConfig>>(pulumi.Input.decodeList<ClusterConfig>(map['configs'], (value) => ClusterConfig.fromMap((value as Map).cast<String, dynamic>()))),
      depositType: map['depositType'] == null ? null : pulumi.Output.create<String>(map['depositType'] as String),
      easEnable: map['easEnable'] == null ? null : pulumi.Output.create<bool>(map['easEnable'] as bool),
      emrVer: map['emrVer'] == null ? null : pulumi.Output.create<String>(map['emrVer'] as String),
      highAvailabilityEnable: map['highAvailabilityEnable'] == null ? null : pulumi.Output.create<bool>(map['highAvailabilityEnable'] as bool),
      hostGroups: map['hostGroups'] == null ? null : pulumi.Output.create<List<ClusterHostGroup>>(pulumi.Input.decodeList<ClusterHostGroup>(map['hostGroups'], (value) => ClusterHostGroup.fromMap((value as Map).cast<String, dynamic>()))),
      isOpenPublicIp: map['isOpenPublicIp'] == null ? null : pulumi.Output.create<bool>(map['isOpenPublicIp'] as bool),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      masterPwd: map['masterPwd'] == null ? null : pulumi.Output.create<String>(map['masterPwd'] as String),
      metaStoreConf: map['metaStoreConf'] == null ? null : pulumi.Output.create<ClusterMetaStoreConf>(ClusterMetaStoreConf.fromMap((map['metaStoreConf'] as Map).cast<String, dynamic>())),
      metaStoreType: map['metaStoreType'] == null ? null : pulumi.Output.create<String>(map['metaStoreType'] as String),
      modifyClusterServiceConfig: map['modifyClusterServiceConfig'] == null ? null : pulumi.Output.create<ClusterModifyClusterServiceConfig>(ClusterModifyClusterServiceConfig.fromMap((map['modifyClusterServiceConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      optionSoftwareLists: map['optionSoftwareLists'] == null ? null : pulumi.Output.create<List<String>>((map['optionSoftwareLists'] as List).cast<String>()),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      relatedClusterId: map['relatedClusterId'] == null ? null : pulumi.Output.create<String>(map['relatedClusterId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      sshEnable: map['sshEnable'] == null ? null : pulumi.Output.create<bool>(map['sshEnable'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      useLocalMetadb: map['useLocalMetadb'] == null ? null : pulumi.Output.create<bool>(map['useLocalMetadb'] as bool),
      userDefinedEmrEcsRole: map['userDefinedEmrEcsRole'] == null ? null : pulumi.Output.create<String>(map['userDefinedEmrEcsRole'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

