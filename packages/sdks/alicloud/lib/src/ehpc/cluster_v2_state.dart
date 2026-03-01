// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_v2_addon.dart';
import 'cluster_v2_cluster_credentials.dart';
import 'cluster_v2_manager.dart';
import 'cluster_v2_shared_storage.dart';

/// Input properties used for looking up and filtering ClusterV2 resources.
class ClusterV2State {
  /// The cluster custom service component configuration. Only one component is supported. See `addons` below.
  final pulumi.Input<List<ClusterV2Addon>>? addons;
  /// Specifies whether to enable auto scale-out for the cluster. Valid values:
  ///
  /// - true
  /// - false
  final pulumi.Input<String>? clientVersion;
  /// The cluster type. Valid values:
  ///
  /// - Standard
  /// - Serverless
  final pulumi.Input<String>? clusterCategory;
  /// Security credentials for the cluster. See `cluster_credentials` below.
  final pulumi.Input<ClusterV2ClusterCredentials>? clusterCredentials;
  /// The deployment mode of the cluster. Valid values:
  ///
  /// - Integrated
  /// - Hybrid
  /// - Custom
  final pulumi.Input<String>? clusterMode;
  /// The post-processing script of the cluster.
  final pulumi.Input<String>? clusterName;
  /// The ID of the virtual private cloud (VPC) in which the cluster resides.
  final pulumi.Input<String>? clusterVpcId;
  /// The ID of the vSwitch that you want the cluster to use. The vSwitch must reside in the VPC that is specified by the `ClusterVpcId` parameter.
  /// You can call the [DescribeVpcs](https://www.alibabacloud.com/help/en/doc-detail/448581.html) operation to query information about the created VPCs and vSwitches.
  final pulumi.Input<String>? clusterVswitchId;
  /// The time when the cluster was created.
  final pulumi.Input<String>? createTime;
  /// The idle duration of the compute nodes allowed by the cluster.
  final pulumi.Input<bool>? deletionProtection;
  /// The configurations of the cluster management node. See `manager` below.
  final pulumi.Input<ClusterV2Manager>? manager;
  /// The ID of the resource group to which the cluster belongs.
  /// You can call the [ListResourceGroups](https://www.alibabacloud.com/help/en/doc-detail/158855.html) operation to obtain the IDs of the resource groups.
  final pulumi.Input<String>? resourceGroupId;
  /// The security group ID.
  final pulumi.Input<String>? securityGroupId;
  /// List of cluster shared storage configurations. See `shared_storages` below.
  final pulumi.Input<List<ClusterV2SharedStorage>>? sharedStorages;

  /// Creates a new [ClusterV2State].
  /// [addons] The cluster custom service component configuration. Only one component is supported. See `addons` below.
  /// [clientVersion] Specifies whether to enable auto scale-out for the cluster. Valid values:
  /// [clusterCategory] The cluster type. Valid values:
  /// [clusterCredentials] Security credentials for the cluster. See `cluster_credentials` below.
  /// [clusterMode] The deployment mode of the cluster. Valid values:
  /// [clusterName] The post-processing script of the cluster.
  /// [clusterVpcId] The ID of the virtual private cloud (VPC) in which the cluster resides.
  /// [clusterVswitchId] The ID of the vSwitch that you want the cluster to use. The vSwitch must reside in the VPC that is specified by the `ClusterVpcId` parameter.
  /// [createTime] The time when the cluster was created.
  /// [deletionProtection] The idle duration of the compute nodes allowed by the cluster.
  /// [manager] The configurations of the cluster management node. See `manager` below.
  /// [resourceGroupId] The ID of the resource group to which the cluster belongs.
  /// [securityGroupId] The security group ID.
  /// [sharedStorages] List of cluster shared storage configurations. See `shared_storages` below.
  ClusterV2State({
    pulumi.Output<List<ClusterV2Addon>>? addons,
    pulumi.Output<String>? clientVersion,
    pulumi.Output<String>? clusterCategory,
    pulumi.Output<ClusterV2ClusterCredentials>? clusterCredentials,
    pulumi.Output<String>? clusterMode,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? clusterVpcId,
    pulumi.Output<String>? clusterVswitchId,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<ClusterV2Manager>? manager,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<List<ClusterV2SharedStorage>>? sharedStorages,
  }) :
      addons = pulumi.Input.asOptionalInput<List<ClusterV2Addon>>(addons),
      clientVersion = pulumi.Input.asOptionalInput<String>(clientVersion),
      clusterCategory = pulumi.Input.asOptionalInput<String>(clusterCategory),
      clusterCredentials = pulumi.Input.asOptionalInput<ClusterV2ClusterCredentials>(clusterCredentials),
      clusterMode = pulumi.Input.asOptionalInput<String>(clusterMode),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterVpcId = pulumi.Input.asOptionalInput<String>(clusterVpcId),
      clusterVswitchId = pulumi.Input.asOptionalInput<String>(clusterVswitchId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      manager = pulumi.Input.asOptionalInput<ClusterV2Manager>(manager),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      sharedStorages = pulumi.Input.asOptionalInput<List<ClusterV2SharedStorage>>(sharedStorages);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons': ?pulumi.Input.mapOptionalInputValue<List<ClusterV2Addon>, List<Map<String, dynamic>>>(addons, (value) => pulumi.Input.encodeList<ClusterV2Addon, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientVersion': ?clientVersion,
      'clusterCategory': ?clusterCategory,
      'clusterCredentials': ?pulumi.Input.mapOptionalInputValue<ClusterV2ClusterCredentials, Map<String, dynamic>>(clusterCredentials, (value) => value.toMap()),
      'clusterMode': ?clusterMode,
      'clusterName': ?clusterName,
      'clusterVpcId': ?clusterVpcId,
      'clusterVswitchId': ?clusterVswitchId,
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'manager': ?pulumi.Input.mapOptionalInputValue<ClusterV2Manager, Map<String, dynamic>>(manager, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'sharedStorages': ?pulumi.Input.mapOptionalInputValue<List<ClusterV2SharedStorage>, List<Map<String, dynamic>>>(sharedStorages, (value) => pulumi.Input.encodeList<ClusterV2SharedStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterV2State.fromMap(Map<String, dynamic> map) {
    return ClusterV2State(
      addons: map['addons'] == null ? null : pulumi.Output.create<List<ClusterV2Addon>>(pulumi.Input.decodeList<ClusterV2Addon>(map['addons'], (value) => ClusterV2Addon.fromMap((value as Map).cast<String, dynamic>()))),
      clientVersion: map['clientVersion'] == null ? null : pulumi.Output.create<String>(map['clientVersion'] as String),
      clusterCategory: map['clusterCategory'] == null ? null : pulumi.Output.create<String>(map['clusterCategory'] as String),
      clusterCredentials: map['clusterCredentials'] == null ? null : pulumi.Output.create<ClusterV2ClusterCredentials>(ClusterV2ClusterCredentials.fromMap((map['clusterCredentials'] as Map).cast<String, dynamic>())),
      clusterMode: map['clusterMode'] == null ? null : pulumi.Output.create<String>(map['clusterMode'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterVpcId: map['clusterVpcId'] == null ? null : pulumi.Output.create<String>(map['clusterVpcId'] as String),
      clusterVswitchId: map['clusterVswitchId'] == null ? null : pulumi.Output.create<String>(map['clusterVswitchId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      manager: map['manager'] == null ? null : pulumi.Output.create<ClusterV2Manager>(ClusterV2Manager.fromMap((map['manager'] as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      sharedStorages: map['sharedStorages'] == null ? null : pulumi.Output.create<List<ClusterV2SharedStorage>>(pulumi.Input.decodeList<ClusterV2SharedStorage>(map['sharedStorages'], (value) => ClusterV2SharedStorage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

