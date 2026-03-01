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
    pulumi.Output<String>? adminPassword,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<List<StarRocksInstanceBackendNodeGroup>>? backendNodeGroups,
    pulumi.Output<String>? clusterZoneId,
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? duration,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<List<StarRocksInstanceFrontendNodeGroup>>? frontendNodeGroups,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<List<StarRocksInstanceObserverNodeGroup>>? observerNodeGroups,
    pulumi.Output<String>? ossAccessingRoleName,
    pulumi.Output<String>? packageType,
    pulumi.Output<String>? payType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? promotionOptionNo,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? runMode,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
    pulumi.Output<String>? vpcId,
    pulumi.Output<List<StarRocksInstanceVswitch>>? vswitches,
  }) :
      adminPassword = pulumi.Input.asOptionalInput<String>(adminPassword),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      backendNodeGroups = pulumi.Input.asOptionalInput<List<StarRocksInstanceBackendNodeGroup>>(backendNodeGroups),
      clusterZoneId = pulumi.Input.asOptionalInput<String>(clusterZoneId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      frontendNodeGroups = pulumi.Input.asOptionalInput<List<StarRocksInstanceFrontendNodeGroup>>(frontendNodeGroups),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      observerNodeGroups = pulumi.Input.asOptionalInput<List<StarRocksInstanceObserverNodeGroup>>(observerNodeGroups),
      ossAccessingRoleName = pulumi.Input.asOptionalInput<String>(ossAccessingRoleName),
      packageType = pulumi.Input.asOptionalInput<String>(packageType),
      payType = pulumi.Input.asOptionalInput<String>(payType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      promotionOptionNo = pulumi.Input.asOptionalInput<String>(promotionOptionNo),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      runMode = pulumi.Input.asOptionalInput<String>(runMode),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitches = pulumi.Input.asOptionalInput<List<StarRocksInstanceVswitch>>(vswitches);

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
      adminPassword: map['adminPassword'] == null ? null : pulumi.Output.create<String>(map['adminPassword'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      backendNodeGroups: map['backendNodeGroups'] == null ? null : pulumi.Output.create<List<StarRocksInstanceBackendNodeGroup>>(pulumi.Input.decodeList<StarRocksInstanceBackendNodeGroup>(map['backendNodeGroups'], (value) => StarRocksInstanceBackendNodeGroup.fromMap((value as Map).cast<String, dynamic>()))),
      clusterZoneId: map['clusterZoneId'] == null ? null : pulumi.Output.create<String>(map['clusterZoneId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      frontendNodeGroups: map['frontendNodeGroups'] == null ? null : pulumi.Output.create<List<StarRocksInstanceFrontendNodeGroup>>(pulumi.Input.decodeList<StarRocksInstanceFrontendNodeGroup>(map['frontendNodeGroups'], (value) => StarRocksInstanceFrontendNodeGroup.fromMap((value as Map).cast<String, dynamic>()))),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      observerNodeGroups: map['observerNodeGroups'] == null ? null : pulumi.Output.create<List<StarRocksInstanceObserverNodeGroup>>(pulumi.Input.decodeList<StarRocksInstanceObserverNodeGroup>(map['observerNodeGroups'], (value) => StarRocksInstanceObserverNodeGroup.fromMap((value as Map).cast<String, dynamic>()))),
      ossAccessingRoleName: map['ossAccessingRoleName'] == null ? null : pulumi.Output.create<String>(map['ossAccessingRoleName'] as String),
      packageType: map['packageType'] == null ? null : pulumi.Output.create<String>(map['packageType'] as String),
      payType: map['payType'] == null ? null : pulumi.Output.create<String>(map['payType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      promotionOptionNo: map['promotionOptionNo'] == null ? null : pulumi.Output.create<String>(map['promotionOptionNo'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      runMode: map['runMode'] == null ? null : pulumi.Output.create<String>(map['runMode'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitches: map['vswitches'] == null ? null : pulumi.Output.create<List<StarRocksInstanceVswitch>>(pulumi.Input.decodeList<StarRocksInstanceVswitch>(map['vswitches'], (value) => StarRocksInstanceVswitch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

