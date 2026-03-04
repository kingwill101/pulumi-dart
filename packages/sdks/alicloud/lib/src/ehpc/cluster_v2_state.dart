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
    this.addons,
    this.clientVersion,
    this.clusterCategory,
    this.clusterCredentials,
    this.clusterMode,
    this.clusterName,
    this.clusterVpcId,
    this.clusterVswitchId,
    this.createTime,
    this.deletionProtection,
    this.manager,
    this.resourceGroupId,
    this.securityGroupId,
    this.sharedStorages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterV2Addon>,
            List<Map<String, dynamic>>
          >(
            addons,
            (value) =>
                pulumi.Input.encodeList<ClusterV2Addon, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'clientVersion': ?clientVersion,
      'clusterCategory': ?clusterCategory,
      'clusterCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterV2ClusterCredentials,
            Map<String, dynamic>
          >(clusterCredentials, (value) => value.toMap()),
      'clusterMode': ?clusterMode,
      'clusterName': ?clusterName,
      'clusterVpcId': ?clusterVpcId,
      'clusterVswitchId': ?clusterVswitchId,
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'manager':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterV2Manager,
            Map<String, dynamic>
          >(manager, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'sharedStorages':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterV2SharedStorage>,
            List<Map<String, dynamic>>
          >(
            sharedStorages,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterV2SharedStorage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterV2State.fromMap(Map<String, dynamic> map) {
    return ClusterV2State(
      addons: (() {
        final guardedValue = map['addons'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterV2Addon>(
            guardedValue,
            (value) =>
                ClusterV2Addon.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      clientVersion: (() {
        final guardedValue = map['clientVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterCategory: (() {
        final guardedValue = map['clusterCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterCredentials: (() {
        final guardedValue = map['clusterCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterV2ClusterCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterMode: (() {
        final guardedValue = map['clusterMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterVpcId: (() {
        final guardedValue = map['clusterVpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterVswitchId: (() {
        final guardedValue = map['clusterVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      manager: (() {
        final guardedValue = map['manager'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterV2Manager.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
      sharedStorages: (() {
        final guardedValue = map['sharedStorages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterV2SharedStorage>(
            guardedValue,
            (value) => ClusterV2SharedStorage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
