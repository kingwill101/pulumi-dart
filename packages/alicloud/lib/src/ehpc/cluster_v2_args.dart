// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_v2_addon.dart';
import 'cluster_v2_cluster_credentials.dart';
import 'cluster_v2_manager.dart';
import 'cluster_v2_shared_storage.dart';

/// {@template pulumi_ehpc_cluster_v2_cluster_v2_args_doc}
/// The set of arguments for ClusterV2.
/// {@endtemplate}
/// {@macro pulumi_ehpc_cluster_v2_cluster_v2_args_doc}
class ClusterV2Args {
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
  final pulumi.Input<ClusterV2ClusterCredentials> clusterCredentials;
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
  final pulumi.Input<List<ClusterV2SharedStorage>> sharedStorages;

  /// Creates a new [ClusterV2Args].
  /// [addons] The cluster custom service component configuration. Only one component is supported. See `addons` below.
  /// [clientVersion] Specifies whether to enable auto scale-out for the cluster. Valid values:
  /// [clusterCategory] The cluster type. Valid values:
  /// [clusterCredentials] Security credentials for the cluster. See `cluster_credentials` below.
  /// [clusterMode] The deployment mode of the cluster. Valid values:
  /// [clusterName] The post-processing script of the cluster.
  /// [clusterVpcId] The ID of the virtual private cloud (VPC) in which the cluster resides.
  /// [clusterVswitchId] The ID of the vSwitch that you want the cluster to use. The vSwitch must reside in the VPC that is specified by the `ClusterVpcId` parameter.
  /// [deletionProtection] The idle duration of the compute nodes allowed by the cluster.
  /// [manager] The configurations of the cluster management node. See `manager` below.
  /// [resourceGroupId] The ID of the resource group to which the cluster belongs.
  /// [securityGroupId] The security group ID.
  /// [sharedStorages] List of cluster shared storage configurations. See `shared_storages` below.
  ClusterV2Args({
    List<ClusterV2Addon>? addons,
    String? clientVersion,
    String? clusterCategory,
    required ClusterV2ClusterCredentials clusterCredentials,
    String? clusterMode,
    String? clusterName,
    String? clusterVpcId,
    String? clusterVswitchId,
    bool? deletionProtection,
    ClusterV2Manager? manager,
    String? resourceGroupId,
    String? securityGroupId,
    required List<ClusterV2SharedStorage> sharedStorages,
  }) :
      addons = pulumi.Input.asOptionalInput<List<ClusterV2Addon>>(addons),
      clientVersion = pulumi.Input.asOptionalInput<String>(clientVersion),
      clusterCategory = pulumi.Input.asOptionalInput<String>(clusterCategory),
      clusterCredentials = pulumi.Input.asInput<ClusterV2ClusterCredentials>(clusterCredentials),
      clusterMode = pulumi.Input.asOptionalInput<String>(clusterMode),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterVpcId = pulumi.Input.asOptionalInput<String>(clusterVpcId),
      clusterVswitchId = pulumi.Input.asOptionalInput<String>(clusterVswitchId),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      manager = pulumi.Input.asOptionalInput<ClusterV2Manager>(manager),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      sharedStorages = pulumi.Input.asInput<List<ClusterV2SharedStorage>>(sharedStorages);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons': ?pulumi.Input.mapOptionalInputValue<List<ClusterV2Addon>, List<Map<String, dynamic>>>(addons, (value) => pulumi.Input.encodeList<ClusterV2Addon, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientVersion': ?clientVersion,
      'clusterCategory': ?clusterCategory,
      'clusterCredentials': pulumi.Input.mapInputValue<ClusterV2ClusterCredentials, Map<String, dynamic>>(clusterCredentials, (value) => value.toMap()),
      'clusterMode': ?clusterMode,
      'clusterName': ?clusterName,
      'clusterVpcId': ?clusterVpcId,
      'clusterVswitchId': ?clusterVswitchId,
      'deletionProtection': ?deletionProtection,
      'manager': ?pulumi.Input.mapOptionalInputValue<ClusterV2Manager, Map<String, dynamic>>(manager, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'sharedStorages': pulumi.Input.mapInputValue<List<ClusterV2SharedStorage>, List<Map<String, dynamic>>>(sharedStorages, (value) => pulumi.Input.encodeList<ClusterV2SharedStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterV2Args.fromMap(Map<String, dynamic> map) {
    return ClusterV2Args(
      addons: map['addons'] == null ? null : pulumi.Input.decodeList<ClusterV2Addon>(map['addons'], (value) => ClusterV2Addon.fromMap((value as Map).cast<String, dynamic>())),
      clientVersion: map['clientVersion'] == null ? null : map['clientVersion'] as String,
      clusterCategory: map['clusterCategory'] == null ? null : map['clusterCategory'] as String,
      clusterCredentials: ClusterV2ClusterCredentials.fromMap((map['clusterCredentials'] as Map).cast<String, dynamic>()),
      clusterMode: map['clusterMode'] == null ? null : map['clusterMode'] as String,
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      clusterVpcId: map['clusterVpcId'] == null ? null : map['clusterVpcId'] as String,
      clusterVswitchId: map['clusterVswitchId'] == null ? null : map['clusterVswitchId'] as String,
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      manager: map['manager'] == null ? null : ClusterV2Manager.fromMap((map['manager'] as Map).cast<String, dynamic>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      sharedStorages: pulumi.Input.decodeList<ClusterV2SharedStorage>(map['sharedStorages'], (value) => ClusterV2SharedStorage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

