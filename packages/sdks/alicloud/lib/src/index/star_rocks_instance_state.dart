// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'star_rocks_instance_backend_node_group.dart';
import 'star_rocks_instance_frontend_node_group.dart';
import 'star_rocks_instance_observer_node_group.dart';
import 'star_rocks_instance_vswitch.dart';

/// Input properties used for looking up and filtering StarRocksInstance resources.
class StarRocksInstanceState {
  /// Password of admin user.
  final pulumi.Input<String>? adminPassword;
  /// Whether to enable automatic renewal. This is only meaningful when payType is set to PrePaid. Disabled by default.
  final pulumi.Input<bool>? autoRenew;
  /// BackendNodeGroups See `backend_node_groups` below.
  final pulumi.Input<List<StarRocksInstanceBackendNodeGroup>>? backendNodeGroups;
  /// ZoneId of instance.
  final pulumi.Input<String>? clusterZoneId;
  /// The creation time of the instance.
  final pulumi.Input<String>? createTime;
  /// Duration of purchase. It is only meaningful when payType is set to PrePaid.
  final pulumi.Input<int>? duration;
  /// Whether encrypted
  final pulumi.Input<bool>? encrypted;
  /// FrontendNodeGroups See `frontend_node_groups` below.
  final pulumi.Input<List<StarRocksInstanceFrontendNodeGroup>>? frontendNodeGroups;
  /// The name of the instance.
  final pulumi.Input<String>? instanceName;
  /// KmsKeyId
  final pulumi.Input<String>? kmsKeyId;
  /// ObserverNodeGroups See `observer_node_groups` below.
  final pulumi.Input<List<StarRocksInstanceObserverNodeGroup>>? observerNodeGroups;
  /// Role name used for password-free access to OSS.
  final pulumi.Input<String>? ossAccessingRoleName;
  /// The package type of the instance:
  /// - trial
  /// - official
  final pulumi.Input<String>? packageType;
  /// The pay type of the instance:
  /// - prePaid
  /// - postPaid
  final pulumi.Input<String>? payType;
  /// The duration unit for purchasing:
  /// - Month
  /// - Year
  /// This is only meaningful when PayType is set to PrePaid.
  final pulumi.Input<String>? pricingCycle;
  /// Promotion
  final pulumi.Input<String>? promotionOptionNo;
  /// The region ID of the instance.
  final pulumi.Input<String>? regionId;
  /// ResourceGroupId
  final pulumi.Input<String>? resourceGroupId;
  /// The run mode of the instance:
  /// - shared_nothing
  /// - shared_data
  /// - lakehouse
  final pulumi.Input<String>? runMode;
  /// The status of the instance.
  final pulumi.Input<String>? status;
  /// Tag list of the instance.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of the instance.
  final pulumi.Input<String>? version;
  /// The VPC ID of the instance.
  final pulumi.Input<String>? vpcId;
  /// The VSwitches info of the instance. See `vswitches` below.
  final pulumi.Input<List<StarRocksInstanceVswitch>>? vswitches;

  /// Creates a new [StarRocksInstanceState].
  /// [adminPassword] Password of admin user.
  /// [autoRenew] Whether to enable automatic renewal. This is only meaningful when payType is set to PrePaid. Disabled by default.
  /// [backendNodeGroups] BackendNodeGroups See `backend_node_groups` below.
  /// [clusterZoneId] ZoneId of instance.
  /// [createTime] The creation time of the instance.
  /// [duration] Duration of purchase. It is only meaningful when payType is set to PrePaid.
  /// [encrypted] Whether encrypted
  /// [frontendNodeGroups] FrontendNodeGroups See `frontend_node_groups` below.
  /// [instanceName] The name of the instance.
  /// [kmsKeyId] KmsKeyId
  /// [observerNodeGroups] ObserverNodeGroups See `observer_node_groups` below.
  /// [ossAccessingRoleName] Role name used for password-free access to OSS.
  /// [packageType] The package type of the instance:
  /// [payType] The pay type of the instance:
  /// [pricingCycle] The duration unit for purchasing:
  /// [promotionOptionNo] Promotion
  /// [regionId] The region ID of the instance.
  /// [resourceGroupId] ResourceGroupId
  /// [runMode] The run mode of the instance:
  /// [status] The status of the instance.
  /// [tags] Tag list of the instance.
  /// [version] The version of the instance.
  /// [vpcId] The VPC ID of the instance.
  /// [vswitches] The VSwitches info of the instance. See `vswitches` below.
  StarRocksInstanceState({
    this.adminPassword,
    this.autoRenew,
    this.backendNodeGroups,
    this.clusterZoneId,
    this.createTime,
    this.duration,
    this.encrypted,
    this.frontendNodeGroups,
    this.instanceName,
    this.kmsKeyId,
    this.observerNodeGroups,
    this.ossAccessingRoleName,
    this.packageType,
    this.payType,
    this.pricingCycle,
    this.promotionOptionNo,
    this.regionId,
    this.resourceGroupId,
    this.runMode,
    this.status,
    this.tags,
    this.version,
    this.vpcId,
    this.vswitches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'autoRenew': ?autoRenew,
      'backendNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<StarRocksInstanceBackendNodeGroup>, List<Map<String, dynamic>>>(backendNodeGroups, (value) => pulumi.Input.encodeList<StarRocksInstanceBackendNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterZoneId': ?clusterZoneId,
      'createTime': ?createTime,
      'duration': ?duration,
      'encrypted': ?encrypted,
      'frontendNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<StarRocksInstanceFrontendNodeGroup>, List<Map<String, dynamic>>>(frontendNodeGroups, (value) => pulumi.Input.encodeList<StarRocksInstanceFrontendNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceName': ?instanceName,
      'kmsKeyId': ?kmsKeyId,
      'observerNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<StarRocksInstanceObserverNodeGroup>, List<Map<String, dynamic>>>(observerNodeGroups, (value) => pulumi.Input.encodeList<StarRocksInstanceObserverNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ossAccessingRoleName': ?ossAccessingRoleName,
      'packageType': ?packageType,
      'payType': ?payType,
      'pricingCycle': ?pricingCycle,
      'promotionOptionNo': ?promotionOptionNo,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'runMode': ?runMode,
      'status': ?status,
      'tags': ?tags,
      'version': ?version,
      'vpcId': ?vpcId,
      'vswitches': ?pulumi.Input.mapOptionalInputValue<List<StarRocksInstanceVswitch>, List<Map<String, dynamic>>>(vswitches, (value) => pulumi.Input.encodeList<StarRocksInstanceVswitch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StarRocksInstanceState.fromMap(Map<String, dynamic> map) {
    return StarRocksInstanceState(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword'] as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      backendNodeGroups: map['backendNodeGroups'] == null ? null : (pulumi.Input.decodeList<StarRocksInstanceBackendNodeGroup>(map['backendNodeGroups'], (value) => StarRocksInstanceBackendNodeGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterZoneId: map['clusterZoneId'] == null ? null : (map['clusterZoneId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration'] as int).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      frontendNodeGroups: map['frontendNodeGroups'] == null ? null : (pulumi.Input.decodeList<StarRocksInstanceFrontendNodeGroup>(map['frontendNodeGroups'], (value) => StarRocksInstanceFrontendNodeGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      observerNodeGroups: map['observerNodeGroups'] == null ? null : (pulumi.Input.decodeList<StarRocksInstanceObserverNodeGroup>(map['observerNodeGroups'], (value) => StarRocksInstanceObserverNodeGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ossAccessingRoleName: map['ossAccessingRoleName'] == null ? null : (map['ossAccessingRoleName'] as String).input(),
      packageType: map['packageType'] == null ? null : (map['packageType'] as String).input(),
      payType: map['payType'] == null ? null : (map['payType'] as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle'] as String).input(),
      promotionOptionNo: map['promotionOptionNo'] == null ? null : (map['promotionOptionNo'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      runMode: map['runMode'] == null ? null : (map['runMode'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitches: map['vswitches'] == null ? null : (pulumi.Input.decodeList<StarRocksInstanceVswitch>(map['vswitches'], (value) => StarRocksInstanceVswitch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

