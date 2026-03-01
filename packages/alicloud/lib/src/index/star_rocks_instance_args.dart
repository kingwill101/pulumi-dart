// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'star_rocks_instance_backend_node_group.dart';
import 'star_rocks_instance_frontend_node_group.dart';
import 'star_rocks_instance_observer_node_group.dart';
import 'star_rocks_instance_vswitch.dart';

/// {@template pulumi_index_star_rocks_instance_star_rocks_instance_args_doc}
/// The set of arguments for StarRocksInstance.
/// {@endtemplate}
/// {@macro pulumi_index_star_rocks_instance_star_rocks_instance_args_doc}
class StarRocksInstanceArgs {
  /// Password of admin user.
  final pulumi.Input<String> adminPassword;
  /// Whether to enable automatic renewal. This is only meaningful when payType is set to PrePaid. Disabled by default.
  final pulumi.Input<bool>? autoRenew;
  /// BackendNodeGroups See `backend_node_groups` below.
  final pulumi.Input<List<StarRocksInstanceBackendNodeGroup>>? backendNodeGroups;
  /// ZoneId of instance.
  final pulumi.Input<String> clusterZoneId;
  /// Duration of purchase. It is only meaningful when payType is set to PrePaid.
  final pulumi.Input<int>? duration;
  /// Whether encrypted
  final pulumi.Input<bool>? encrypted;
  /// FrontendNodeGroups See `frontend_node_groups` below.
  final pulumi.Input<List<StarRocksInstanceFrontendNodeGroup>>? frontendNodeGroups;
  /// The name of the instance.
  final pulumi.Input<String> instanceName;
  /// KmsKeyId
  final pulumi.Input<String>? kmsKeyId;
  /// ObserverNodeGroups See `observer_node_groups` below.
  final pulumi.Input<List<StarRocksInstanceObserverNodeGroup>>? observerNodeGroups;
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
  final pulumi.Input<List<StarRocksInstanceVswitch>>? vswitches;

  /// Creates a new [StarRocksInstanceArgs].
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
  StarRocksInstanceArgs({
    required String adminPassword,
    bool? autoRenew,
    List<StarRocksInstanceBackendNodeGroup>? backendNodeGroups,
    required String clusterZoneId,
    int? duration,
    bool? encrypted,
    List<StarRocksInstanceFrontendNodeGroup>? frontendNodeGroups,
    required String instanceName,
    String? kmsKeyId,
    List<StarRocksInstanceObserverNodeGroup>? observerNodeGroups,
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
    List<StarRocksInstanceVswitch>? vswitches,
  }) :
      adminPassword = pulumi.Input.asInput<String>(adminPassword),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      backendNodeGroups = pulumi.Input.asOptionalInput<List<StarRocksInstanceBackendNodeGroup>>(backendNodeGroups),
      clusterZoneId = pulumi.Input.asInput<String>(clusterZoneId),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      frontendNodeGroups = pulumi.Input.asOptionalInput<List<StarRocksInstanceFrontendNodeGroup>>(frontendNodeGroups),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      observerNodeGroups = pulumi.Input.asOptionalInput<List<StarRocksInstanceObserverNodeGroup>>(observerNodeGroups),
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
      vswitches = pulumi.Input.asOptionalInput<List<StarRocksInstanceVswitch>>(vswitches);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'autoRenew': ?autoRenew,
      'backendNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<StarRocksInstanceBackendNodeGroup>, List<Map<String, dynamic>>>(backendNodeGroups, (value) => pulumi.Input.encodeList<StarRocksInstanceBackendNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterZoneId': clusterZoneId,
      'duration': ?duration,
      'encrypted': ?encrypted,
      'frontendNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<StarRocksInstanceFrontendNodeGroup>, List<Map<String, dynamic>>>(frontendNodeGroups, (value) => pulumi.Input.encodeList<StarRocksInstanceFrontendNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceName': instanceName,
      'kmsKeyId': ?kmsKeyId,
      'observerNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<StarRocksInstanceObserverNodeGroup>, List<Map<String, dynamic>>>(observerNodeGroups, (value) => pulumi.Input.encodeList<StarRocksInstanceObserverNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'vswitches': ?pulumi.Input.mapOptionalInputValue<List<StarRocksInstanceVswitch>, List<Map<String, dynamic>>>(vswitches, (value) => pulumi.Input.encodeList<StarRocksInstanceVswitch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StarRocksInstanceArgs.fromMap(Map<String, dynamic> map) {
    return StarRocksInstanceArgs(
      adminPassword: map['adminPassword'] as String,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      backendNodeGroups: map['backendNodeGroups'] == null ? null : pulumi.Input.decodeList<StarRocksInstanceBackendNodeGroup>(map['backendNodeGroups'], (value) => StarRocksInstanceBackendNodeGroup.fromMap((value as Map).cast<String, dynamic>())),
      clusterZoneId: map['clusterZoneId'] as String,
      duration: map['duration'] == null ? null : map['duration'] as int,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      frontendNodeGroups: map['frontendNodeGroups'] == null ? null : pulumi.Input.decodeList<StarRocksInstanceFrontendNodeGroup>(map['frontendNodeGroups'], (value) => StarRocksInstanceFrontendNodeGroup.fromMap((value as Map).cast<String, dynamic>())),
      instanceName: map['instanceName'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      observerNodeGroups: map['observerNodeGroups'] == null ? null : pulumi.Input.decodeList<StarRocksInstanceObserverNodeGroup>(map['observerNodeGroups'], (value) => StarRocksInstanceObserverNodeGroup.fromMap((value as Map).cast<String, dynamic>())),
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
      vswitches: map['vswitches'] == null ? null : pulumi.Input.decodeList<StarRocksInstanceVswitch>(map['vswitches'], (value) => StarRocksInstanceVswitch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

