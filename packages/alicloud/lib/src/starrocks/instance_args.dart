// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_backend_node_group.dart';
import 'instance_frontend_node_group.dart';
import 'instance_observer_node_group.dart';
import 'instance_vswitch.dart';

/// {@template pulumi_starrocks_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_starrocks_instance_instance_args_doc}
class InstanceArgs {
  /// Password of admin user.
  final pulumi.Input<String> adminPassword;
  /// Whether to enable automatic renewal. This is only meaningful when payType is set to PrePaid. Disabled by default.
  final pulumi.Input<bool>? autoRenew;
  /// BackendNodeGroups See `backend_node_groups` below.
  final pulumi.Input<List<InstanceBackendNodeGroup>>? backendNodeGroups;
  /// ZoneId of instance.
  final pulumi.Input<String> clusterZoneId;
  /// Duration of purchase. It is only meaningful when payType is set to PrePaid.
  final pulumi.Input<int>? duration;
  /// Whether encrypted
  final pulumi.Input<bool>? encrypted;
  /// FrontendNodeGroups See `frontend_node_groups` below.
  final pulumi.Input<List<InstanceFrontendNodeGroup>>? frontendNodeGroups;
  /// The name of the instance.
  final pulumi.Input<String> instanceName;
  /// KmsKeyId
  final pulumi.Input<String>? kmsKeyId;
  /// ObserverNodeGroups See `observer_node_groups` below.
  final pulumi.Input<List<InstanceObserverNodeGroup>>? observerNodeGroups;
  /// Role name used for password-free access to OSS.
  final pulumi.Input<String>? ossAccessingRoleName;
  /// The package type of the instance:
  /// - trial
  /// - official
  final pulumi.Input<String> packageType;
  /// The pay type of the instance:
  /// - prePaid
  /// - postPaid
  final pulumi.Input<String> payType;
  /// The duration unit for purchasing:
  /// - Month
  /// - Year
  /// This is only meaningful when PayType is set to PrePaid.
  final pulumi.Input<String>? pricingCycle;
  /// Promotion
  final pulumi.Input<String>? promotionOptionNo;
  /// ResourceGroupId
  final pulumi.Input<String>? resourceGroupId;
  /// The run mode of the instance:
  /// - shared_nothing
  /// - shared_data
  /// - lakehouse
  final pulumi.Input<String> runMode;
  /// Tag list of the instance.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of the instance.
  final pulumi.Input<String> version;
  /// The VPC ID of the instance.
  final pulumi.Input<String> vpcId;
  /// The VSwitches info of the instance. See `vswitches` below.
  final pulumi.Input<List<InstanceVswitch>>? vswitches;

  /// Creates a new [InstanceArgs].
  /// [adminPassword] Password of admin user.
  /// [autoRenew] Whether to enable automatic renewal. This is only meaningful when payType is set to PrePaid. Disabled by default.
  /// [backendNodeGroups] BackendNodeGroups See `backend_node_groups` below.
  /// [clusterZoneId] ZoneId of instance.
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
  /// [resourceGroupId] ResourceGroupId
  /// [runMode] The run mode of the instance:
  /// [tags] Tag list of the instance.
  /// [version] The version of the instance.
  /// [vpcId] The VPC ID of the instance.
  /// [vswitches] The VSwitches info of the instance. See `vswitches` below.
  InstanceArgs({
    required String adminPassword,
    bool? autoRenew,
    List<InstanceBackendNodeGroup>? backendNodeGroups,
    required String clusterZoneId,
    int? duration,
    bool? encrypted,
    List<InstanceFrontendNodeGroup>? frontendNodeGroups,
    required String instanceName,
    String? kmsKeyId,
    List<InstanceObserverNodeGroup>? observerNodeGroups,
    String? ossAccessingRoleName,
    required String packageType,
    required String payType,
    String? pricingCycle,
    String? promotionOptionNo,
    String? resourceGroupId,
    required String runMode,
    Map<String, String>? tags,
    required String version,
    required String vpcId,
    List<InstanceVswitch>? vswitches,
  }) :
      adminPassword = pulumi.Input.asInput<String>(adminPassword),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      backendNodeGroups = pulumi.Input.asOptionalInput<List<InstanceBackendNodeGroup>>(backendNodeGroups),
      clusterZoneId = pulumi.Input.asInput<String>(clusterZoneId),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      frontendNodeGroups = pulumi.Input.asOptionalInput<List<InstanceFrontendNodeGroup>>(frontendNodeGroups),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      observerNodeGroups = pulumi.Input.asOptionalInput<List<InstanceObserverNodeGroup>>(observerNodeGroups),
      ossAccessingRoleName = pulumi.Input.asOptionalInput<String>(ossAccessingRoleName),
      packageType = pulumi.Input.asInput<String>(packageType),
      payType = pulumi.Input.asInput<String>(payType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      promotionOptionNo = pulumi.Input.asOptionalInput<String>(promotionOptionNo),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      runMode = pulumi.Input.asInput<String>(runMode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asInput<String>(version),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitches = pulumi.Input.asOptionalInput<List<InstanceVswitch>>(vswitches);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'autoRenew': ?autoRenew,
      'backendNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<InstanceBackendNodeGroup>, List<Map<String, dynamic>>>(backendNodeGroups, (value) => pulumi.Input.encodeList<InstanceBackendNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterZoneId': clusterZoneId,
      'duration': ?duration,
      'encrypted': ?encrypted,
      'frontendNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<InstanceFrontendNodeGroup>, List<Map<String, dynamic>>>(frontendNodeGroups, (value) => pulumi.Input.encodeList<InstanceFrontendNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceName': instanceName,
      'kmsKeyId': ?kmsKeyId,
      'observerNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<InstanceObserverNodeGroup>, List<Map<String, dynamic>>>(observerNodeGroups, (value) => pulumi.Input.encodeList<InstanceObserverNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ossAccessingRoleName': ?ossAccessingRoleName,
      'packageType': packageType,
      'payType': payType,
      'pricingCycle': ?pricingCycle,
      'promotionOptionNo': ?promotionOptionNo,
      'resourceGroupId': ?resourceGroupId,
      'runMode': runMode,
      'tags': ?tags,
      'version': version,
      'vpcId': vpcId,
      'vswitches': ?pulumi.Input.mapOptionalInputValue<List<InstanceVswitch>, List<Map<String, dynamic>>>(vswitches, (value) => pulumi.Input.encodeList<InstanceVswitch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      adminPassword: map['adminPassword'] as String,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      backendNodeGroups: map['backendNodeGroups'] == null ? null : pulumi.Input.decodeList<InstanceBackendNodeGroup>(map['backendNodeGroups'], (value) => InstanceBackendNodeGroup.fromMap((value as Map).cast<String, dynamic>())),
      clusterZoneId: map['clusterZoneId'] as String,
      duration: map['duration'] == null ? null : map['duration'] as int,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      frontendNodeGroups: map['frontendNodeGroups'] == null ? null : pulumi.Input.decodeList<InstanceFrontendNodeGroup>(map['frontendNodeGroups'], (value) => InstanceFrontendNodeGroup.fromMap((value as Map).cast<String, dynamic>())),
      instanceName: map['instanceName'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      observerNodeGroups: map['observerNodeGroups'] == null ? null : pulumi.Input.decodeList<InstanceObserverNodeGroup>(map['observerNodeGroups'], (value) => InstanceObserverNodeGroup.fromMap((value as Map).cast<String, dynamic>())),
      ossAccessingRoleName: map['ossAccessingRoleName'] == null ? null : map['ossAccessingRoleName'] as String,
      packageType: map['packageType'] as String,
      payType: map['payType'] as String,
      pricingCycle: map['pricingCycle'] == null ? null : map['pricingCycle'] as String,
      promotionOptionNo: map['promotionOptionNo'] == null ? null : map['promotionOptionNo'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      runMode: map['runMode'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
      vpcId: map['vpcId'] as String,
      vswitches: map['vswitches'] == null ? null : pulumi.Input.decodeList<InstanceVswitch>(map['vswitches'], (value) => InstanceVswitch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

