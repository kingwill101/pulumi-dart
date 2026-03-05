// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_additional_volume.dart';
import 'cluster_application.dart';
import 'cluster_post_install_script.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The type of the domain account service. Valid values: `nis`, `ldap`. Default value: `nis`
  final pulumi.Input<String>? accountType;
  /// The additional volumes. See `additional_volumes` below.
  final pulumi.Input<List<ClusterAdditionalVolume>>? additionalVolumes;
  /// The application. See `application` below.
  final pulumi.Input<List<ClusterApplication>>? applications;
  /// Specifies whether to enable auto-renewal for the subscription. Default value: `false`.
  final pulumi.Input<bool>? autoRenew;
  /// The auto-renewal period of the subscription compute nodes. The parameter takes effect when AutoRenew is set to true.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The version of the E-HPC client. By default, the parameter is set to the latest version number.
  final pulumi.Input<String>? clientVersion;
  /// The name of the cluster. The name must be `2` to `64` characters in length.
  final pulumi.Input<String>? clusterName;
  /// The version of the cluster. Default value: `1.0`.
  final pulumi.Input<String>? clusterVersion;
  /// The number of the compute nodes. Valid values: `1` to `99`.
  final pulumi.Input<int>? computeCount;
  /// Specifies whether the compute nodes support hyper-threading. Default value: `true`.
  final pulumi.Input<bool>? computeEnableHt;
  /// The instance type of the compute nodes.
  final pulumi.Input<String>? computeInstanceType;
  /// The maximum hourly price of the compute nodes. A maximum of three decimal places can be used in the value of the parameter. The parameter is valid only when the ComputeSpotStrategy parameter is set to SpotWithPriceLimit.
  final pulumi.Input<String>? computeSpotPriceLimit;
  /// The bidding method of the compute nodes. Default value: `NoSpot`. Valid values:
  /// - `NoSpot`: The compute nodes are pay-as-you-go instances.
  /// - `SpotWithPriceLimit`: The compute nodes are preemptible instances that have a user-defined maximum hourly price.
  /// - `SpotAsPriceGo`: The compute nodes are preemptible instances for which the market price at the time of purchase is used as the bid price.
  final pulumi.Input<String>? computeSpotStrategy;
  /// The mode in which the cluster is deployed. Valid values: `Standard`, `Simple`, `Tiny`. Default value: Standard.
  /// - `Standard`: An account node, a scheduling node, a logon node, and multiple compute nodes are separately deployed.
  /// - `Simple`: A management node, a logon node, and multiple compute nodes are deployed. The management node consists of an account node and a scheduling node. The logon node and compute nodes are separately deployed.
  /// - `Tiny`: A management node and multiple compute nodes are deployed. The management node consists of an account node, a scheduling node, and a logon node. The compute nodes are separately deployed.
  final pulumi.Input<String>? deployMode;
  /// The description of the cluster. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The domain name of the on-premises cluster. This parameter takes effect only when the AccoutType parameter is set to Idap.
  final pulumi.Input<String>? domain;
  /// The billing method of the nodes.
  final pulumi.Input<String>? ecsChargeType;
  /// The version of E-HPC. By default, the parameter is set to the latest version number.
  final pulumi.Input<String>? ehpcVersion;
  /// Specifies whether to enable the high availability feature. Default value: `false`.  **Note:** If high availability is enabled, a primary management node and a secondary management node are used.
  final pulumi.Input<bool>? haEnable;
  /// The ID of the image.
  final pulumi.Input<String>? imageId;
  /// The type of the image. Valid values: `others`, `self`, `system`, `marketplace`. Default value: `system`.
  final pulumi.Input<String>? imageOwnerAlias;
  /// The URL of the job files that are uploaded to an Object Storage Service (OSS) bucket.
  final pulumi.Input<String>? inputFileUrl;
  /// Specifies whether to enable auto scaling. Default value: `false`.
  final pulumi.Input<bool>? isComputeEss;
  /// The queue to which the compute nodes are added.
  final pulumi.Input<String>? jobQueue;
  /// The name of the AccessKey pair.
  final pulumi.Input<String>? keyPairName;
  /// The number of the logon nodes. Valid values: `1`.
  final pulumi.Input<int>? loginCount;
  /// The instance type of the logon nodes.
  final pulumi.Input<String>? loginInstanceType;
  /// The number of the management nodes. Valid values: 1 and 2.
  final pulumi.Input<int>? managerCount;
  /// The instance type of the management nodes.
  final pulumi.Input<String>? managerInstanceType;
  /// The image tag of the operating system.
  final pulumi.Input<String>? osTag;
  /// The root password of the logon node. The password must be 8 to 30 characters in length and contain at least three of the following items: uppercase letters, lowercase letters, digits, and special characters. The password can contain the following special characters: `( ) ~ ! @ # $ % ^ & * - + = { } [ ] : ; ‘ &lt; &gt; , . ? /`. You must specify either `password` or `key_pair_name`. If both are specified, the Password parameter prevails.
  final pulumi.Input<String>? password;
  /// The duration of the subscription. The unit of the duration is specified by the `period_unit` parameter. Default value: `1`.
  /// * If you set PriceUnit to Year, the valid values of the Period parameter are 1, 2, and 3.
  /// * If you set PriceUnit to Month, the valid values of the Period parameter are 1, 2, 3, 4, 5, 6, 7, 8, and 9.
  /// * If you set PriceUnit to Hour, the valid value of the Period parameter is 1.
  final pulumi.Input<int>? period;
  /// The unit of the subscription duration. Valid values: `Year`, `Month`, `Hour`. Default value: `Month`.
  final pulumi.Input<String>? periodUnit;
  /// The mode configurations of the plug-in. This parameter takes effect only when the SchedulerType parameter is set to custom. The value must be a JSON string. The parameter contains the following parameters: pluginMod, pluginLocalPath, and pluginOssPath.
  /// - pluginMod: the mode of the plug-in. The following modes are supported:
  /// - oss: The plug-in is downloaded and decompressed from OSS to a local path. The local path is specified by the pluginLocalPath parameter.
  /// - image: By default, the plug-in is stored in a pre-defined local path. The local path is specified by the pluginLocalPath parameter.
  /// - pluginLocalPath: the local path where the plug-in is stored. We recommend that you select a shared directory in oss mode and a non-shared directory in image mode.
  /// - pluginOssPath: the remote path where the plug-in is stored in OSS. This parameter takes effect only when the pluginMod parameter is set to oss.
  final pulumi.Input<String>? plugin;
  /// The post install script. See `post_install_script` below.
  final pulumi.Input<List<ClusterPostInstallScript>>? postInstallScripts;
  /// The node of the RAM role.
  final pulumi.Input<List<String>>? ramNodeTypes;
  /// The name of the Resource Access Management (RAM) role.
  final pulumi.Input<String>? ramRoleName;
  /// The release instance. Valid values: `true`.
  final pulumi.Input<bool>? releaseInstance;
  /// The remote directory to which the file system is mounted.
  final pulumi.Input<String>? remoteDirectory;
  /// Specifies whether to enable Virtual Network Computing (VNC). Default value: `false`.
  final pulumi.Input<bool>? remoteVisEnable;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the Super Computing Cluster (SCC) instance. If you specify the parameter, the SCC instance is moved to a new SCC cluster.
  final pulumi.Input<String>? sccClusterId;
  /// The type of the scheduler. Valid values: `pbs`, `slurm`, `opengridscheduler` and `deadline`. Default value: `pbs`.
  final pulumi.Input<String>? schedulerType;
  /// The ID of the security group to which the cluster belongs.
  final pulumi.Input<String>? securityGroupId;
  /// If you do not use an existing security group, set the parameter to the name of a new security group. A default policy is applied to the new security group.
  final pulumi.Input<String>? securityGroupName;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The performance level of the ESSD that is used as the system disk. Default value: `PL1` For more information, see [ESSDs](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/essds). Valid values:
  /// * `PL0`: A single ESSD can deliver up to 10,000 random read/write IOPS.
  /// * `PL1`: A single ESSD can deliver up to 50,000 random read/write IOPS.
  /// * `PL2`: A single ESSD can deliver up to 100,000 random read/write IOPS.
  /// * `PL3`: A single ESSD can deliver up to 1,000,000 random read/write IOPS.
  final pulumi.Input<String>? systemDiskLevel;
  /// The size of the system disk. Unit: `GB`. Valid values: `40` to `500`. Default value: `40`.
  final pulumi.Input<int>? systemDiskSize;
  /// The type of the system disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd` or `cloud`. Default value: `cloud_ssd`.
  final pulumi.Input<String>? systemDiskType;
  /// The ID of the file system. If you leave the parameter empty, a Performance NAS file system is created by default.
  final pulumi.Input<String>? volumeId;
  /// The mount options of the file system.
  final pulumi.Input<String>? volumeMountOption;
  /// The mount target of the file system. Take note of the following information:
  /// - If you do not specify the VolumeId parameter, you can leave the VolumeMountpoint parameter empty. A mount target is created by default.
  /// - If you specify the VolumeId parameter, the VolumeMountpoint parameter is required.
  final pulumi.Input<String>? volumeMountpoint;
  /// The type of the protocol that is used by the file system. Valid values: `NFS`, `SMB`. Default value: `NFS`.
  final pulumi.Input<String>? volumeProtocol;
  /// The type of the shared storage. Only Apsara File Storage NAS file systems are supported.
  final pulumi.Input<String>? volumeType;
  /// The ID of the virtual private cloud (VPC) to which the cluster belongs.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vSwitch. E-HPC supports only VPC networks.
  final pulumi.Input<String>? vswitchId;
  /// Specifies whether not to install the agent. Default value: `false`.
  final pulumi.Input<bool>? withoutAgent;
  /// Specifies whether the logon node uses an elastic IP address (EIP). Default value: `false`.
  final pulumi.Input<bool>? withoutElasticIp;
  /// The ID of the zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClusterState].
  /// [accountType] The type of the domain account service. Valid values: `nis`, `ldap`. Default value: `nis`
  /// [additionalVolumes] The additional volumes. See `additional_volumes` below.
  /// [applications] The application. See `application` below.
  /// [autoRenew] Specifies whether to enable auto-renewal for the subscription. Default value: `false`.
  /// [autoRenewPeriod] The auto-renewal period of the subscription compute nodes. The parameter takes effect when AutoRenew is set to true.
  /// [clientVersion] The version of the E-HPC client. By default, the parameter is set to the latest version number.
  /// [clusterName] The name of the cluster. The name must be `2` to `64` characters in length.
  /// [clusterVersion] The version of the cluster. Default value: `1.0`.
  /// [computeCount] The number of the compute nodes. Valid values: `1` to `99`.
  /// [computeEnableHt] Specifies whether the compute nodes support hyper-threading. Default value: `true`.
  /// [computeInstanceType] The instance type of the compute nodes.
  /// [computeSpotPriceLimit] The maximum hourly price of the compute nodes. A maximum of three decimal places can be used in the value of the parameter. The parameter is valid only when the ComputeSpotStrategy parameter is set to SpotWithPriceLimit.
  /// [computeSpotStrategy] The bidding method of the compute nodes. Default value: `NoSpot`. Valid values:
  /// [deployMode] The mode in which the cluster is deployed. Valid values: `Standard`, `Simple`, `Tiny`. Default value: Standard.
  /// [description] The description of the cluster. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  /// [domain] The domain name of the on-premises cluster. This parameter takes effect only when the AccoutType parameter is set to Idap.
  /// [ecsChargeType] The billing method of the nodes.
  /// [ehpcVersion] The version of E-HPC. By default, the parameter is set to the latest version number.
  /// [haEnable] Specifies whether to enable the high availability feature. Default value: `false`.  **Note:** If high availability is enabled, a primary management node and a secondary management node are used.
  /// [imageId] The ID of the image.
  /// [imageOwnerAlias] The type of the image. Valid values: `others`, `self`, `system`, `marketplace`. Default value: `system`.
  /// [inputFileUrl] The URL of the job files that are uploaded to an Object Storage Service (OSS) bucket.
  /// [isComputeEss] Specifies whether to enable auto scaling. Default value: `false`.
  /// [jobQueue] The queue to which the compute nodes are added.
  /// [keyPairName] The name of the AccessKey pair.
  /// [loginCount] The number of the logon nodes. Valid values: `1`.
  /// [loginInstanceType] The instance type of the logon nodes.
  /// [managerCount] The number of the management nodes. Valid values: 1 and 2.
  /// [managerInstanceType] The instance type of the management nodes.
  /// [osTag] The image tag of the operating system.
  /// [password] The root password of the logon node. The password must be 8 to 30 characters in length and contain at least three of the following items: uppercase letters, lowercase letters, digits, and special characters. The password can contain the following special characters: `( ) ~ ! @ # $ % ^ & * - + = { } [ ] : ; ‘ &lt; &gt; , . ? /`. You must specify either `password` or `key_pair_name`. If both are specified, the Password parameter prevails.
  /// [period] The duration of the subscription. The unit of the duration is specified by the `period_unit` parameter. Default value: `1`.
  /// [periodUnit] The unit of the subscription duration. Valid values: `Year`, `Month`, `Hour`. Default value: `Month`.
  /// [plugin] The mode configurations of the plug-in. This parameter takes effect only when the SchedulerType parameter is set to custom. The value must be a JSON string. The parameter contains the following parameters: pluginMod, pluginLocalPath, and pluginOssPath.
  /// [postInstallScripts] The post install script. See `post_install_script` below.
  /// [ramNodeTypes] The node of the RAM role.
  /// [ramRoleName] The name of the Resource Access Management (RAM) role.
  /// [releaseInstance] The release instance. Valid values: `true`.
  /// [remoteDirectory] The remote directory to which the file system is mounted.
  /// [remoteVisEnable] Specifies whether to enable Virtual Network Computing (VNC). Default value: `false`.
  /// [resourceGroupId] The ID of the resource group.
  /// [sccClusterId] The ID of the Super Computing Cluster (SCC) instance. If you specify the parameter, the SCC instance is moved to a new SCC cluster.
  /// [schedulerType] The type of the scheduler. Valid values: `pbs`, `slurm`, `opengridscheduler` and `deadline`. Default value: `pbs`.
  /// [securityGroupId] The ID of the security group to which the cluster belongs.
  /// [securityGroupName] If you do not use an existing security group, set the parameter to the name of a new security group. A default policy is applied to the new security group.
  /// [status] The status of the resource.
  /// [systemDiskLevel] The performance level of the ESSD that is used as the system disk. Default value: `PL1` For more information, see [ESSDs](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/essds). Valid values:
  /// [systemDiskSize] The size of the system disk. Unit: `GB`. Valid values: `40` to `500`. Default value: `40`.
  /// [systemDiskType] The type of the system disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd` or `cloud`. Default value: `cloud_ssd`.
  /// [volumeId] The ID of the file system. If you leave the parameter empty, a Performance NAS file system is created by default.
  /// [volumeMountOption] The mount options of the file system.
  /// [volumeMountpoint] The mount target of the file system. Take note of the following information:
  /// [volumeProtocol] The type of the protocol that is used by the file system. Valid values: `NFS`, `SMB`. Default value: `NFS`.
  /// [volumeType] The type of the shared storage. Only Apsara File Storage NAS file systems are supported.
  /// [vpcId] The ID of the virtual private cloud (VPC) to which the cluster belongs.
  /// [vswitchId] The ID of the vSwitch. E-HPC supports only VPC networks.
  /// [withoutAgent] Specifies whether not to install the agent. Default value: `false`.
  /// [withoutElasticIp] Specifies whether the logon node uses an elastic IP address (EIP). Default value: `false`.
  /// [zoneId] The ID of the zone.
  ClusterState({
    this.accountType,
    this.additionalVolumes,
    this.applications,
    this.autoRenew,
    this.autoRenewPeriod,
    this.clientVersion,
    this.clusterName,
    this.clusterVersion,
    this.computeCount,
    this.computeEnableHt,
    this.computeInstanceType,
    this.computeSpotPriceLimit,
    this.computeSpotStrategy,
    this.deployMode,
    this.description,
    this.domain,
    this.ecsChargeType,
    this.ehpcVersion,
    this.haEnable,
    this.imageId,
    this.imageOwnerAlias,
    this.inputFileUrl,
    this.isComputeEss,
    this.jobQueue,
    this.keyPairName,
    this.loginCount,
    this.loginInstanceType,
    this.managerCount,
    this.managerInstanceType,
    this.osTag,
    this.password,
    this.period,
    this.periodUnit,
    this.plugin,
    this.postInstallScripts,
    this.ramNodeTypes,
    this.ramRoleName,
    this.releaseInstance,
    this.remoteDirectory,
    this.remoteVisEnable,
    this.resourceGroupId,
    this.sccClusterId,
    this.schedulerType,
    this.securityGroupId,
    this.securityGroupName,
    this.status,
    this.systemDiskLevel,
    this.systemDiskSize,
    this.systemDiskType,
    this.volumeId,
    this.volumeMountOption,
    this.volumeMountpoint,
    this.volumeProtocol,
    this.volumeType,
    this.vpcId,
    this.vswitchId,
    this.withoutAgent,
    this.withoutElasticIp,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountType': ?accountType,
      'additionalVolumes': ?pulumi.Input.mapOptionalInputValue<List<ClusterAdditionalVolume>, List<Map<String, dynamic>>>(additionalVolumes, (value) => pulumi.Input.encodeList<ClusterAdditionalVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applications': ?pulumi.Input.mapOptionalInputValue<List<ClusterApplication>, List<Map<String, dynamic>>>(applications, (value) => pulumi.Input.encodeList<ClusterApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'clientVersion': ?clientVersion,
      'clusterName': ?clusterName,
      'clusterVersion': ?clusterVersion,
      'computeCount': ?computeCount,
      'computeEnableHt': ?computeEnableHt,
      'computeInstanceType': ?computeInstanceType,
      'computeSpotPriceLimit': ?computeSpotPriceLimit,
      'computeSpotStrategy': ?computeSpotStrategy,
      'deployMode': ?deployMode,
      'description': ?description,
      'domain': ?domain,
      'ecsChargeType': ?ecsChargeType,
      'ehpcVersion': ?ehpcVersion,
      'haEnable': ?haEnable,
      'imageId': ?imageId,
      'imageOwnerAlias': ?imageOwnerAlias,
      'inputFileUrl': ?inputFileUrl,
      'isComputeEss': ?isComputeEss,
      'jobQueue': ?jobQueue,
      'keyPairName': ?keyPairName,
      'loginCount': ?loginCount,
      'loginInstanceType': ?loginInstanceType,
      'managerCount': ?managerCount,
      'managerInstanceType': ?managerInstanceType,
      'osTag': ?osTag,
      'password': ?password,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'plugin': ?plugin,
      'postInstallScripts': ?pulumi.Input.mapOptionalInputValue<List<ClusterPostInstallScript>, List<Map<String, dynamic>>>(postInstallScripts, (value) => pulumi.Input.encodeList<ClusterPostInstallScript, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ramNodeTypes': ?ramNodeTypes,
      'ramRoleName': ?ramRoleName,
      'releaseInstance': ?releaseInstance,
      'remoteDirectory': ?remoteDirectory,
      'remoteVisEnable': ?remoteVisEnable,
      'resourceGroupId': ?resourceGroupId,
      'sccClusterId': ?sccClusterId,
      'schedulerType': ?schedulerType,
      'securityGroupId': ?securityGroupId,
      'securityGroupName': ?securityGroupName,
      'status': ?status,
      'systemDiskLevel': ?systemDiskLevel,
      'systemDiskSize': ?systemDiskSize,
      'systemDiskType': ?systemDiskType,
      'volumeId': ?volumeId,
      'volumeMountOption': ?volumeMountOption,
      'volumeMountpoint': ?volumeMountpoint,
      'volumeProtocol': ?volumeProtocol,
      'volumeType': ?volumeType,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'withoutAgent': ?withoutAgent,
      'withoutElasticIp': ?withoutElasticIp,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      accountType: (() { final guardedValue = map['accountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      additionalVolumes: (() { final guardedValue = map['additionalVolumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterAdditionalVolume>(guardedValue, (value) => ClusterAdditionalVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applications: (() { final guardedValue = map['applications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterApplication>(guardedValue, (value) => ClusterApplication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      computeEnableHt: (() { final guardedValue = map['computeEnableHt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      computeInstanceType: (() { final guardedValue = map['computeInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeSpotPriceLimit: (() { final guardedValue = map['computeSpotPriceLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeSpotStrategy: (() { final guardedValue = map['computeSpotStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployMode: (() { final guardedValue = map['deployMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsChargeType: (() { final guardedValue = map['ecsChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ehpcVersion: (() { final guardedValue = map['ehpcVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haEnable: (() { final guardedValue = map['haEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageOwnerAlias: (() { final guardedValue = map['imageOwnerAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputFileUrl: (() { final guardedValue = map['inputFileUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isComputeEss: (() { final guardedValue = map['isComputeEss']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jobQueue: (() { final guardedValue = map['jobQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginCount: (() { final guardedValue = map['loginCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loginInstanceType: (() { final guardedValue = map['loginInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managerCount: (() { final guardedValue = map['managerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      managerInstanceType: (() { final guardedValue = map['managerInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osTag: (() { final guardedValue = map['osTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plugin: (() { final guardedValue = map['plugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postInstallScripts: (() { final guardedValue = map['postInstallScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterPostInstallScript>(guardedValue, (value) => ClusterPostInstallScript.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ramNodeTypes: (() { final guardedValue = map['ramNodeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ramRoleName: (() { final guardedValue = map['ramRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseInstance: (() { final guardedValue = map['releaseInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remoteDirectory: (() { final guardedValue = map['remoteDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteVisEnable: (() { final guardedValue = map['remoteVisEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sccClusterId: (() { final guardedValue = map['sccClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulerType: (() { final guardedValue = map['schedulerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupName: (() { final guardedValue = map['securityGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskLevel: (() { final guardedValue = map['systemDiskLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskSize: (() { final guardedValue = map['systemDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      systemDiskType: (() { final guardedValue = map['systemDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeMountOption: (() { final guardedValue = map['volumeMountOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeMountpoint: (() { final guardedValue = map['volumeMountpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeProtocol: (() { final guardedValue = map['volumeProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withoutAgent: (() { final guardedValue = map['withoutAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      withoutElasticIp: (() { final guardedValue = map['withoutElasticIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

