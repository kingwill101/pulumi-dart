// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'milvus_instance_component.dart';
import 'milvus_instance_vswitch_id.dart';

/// {@template pulumi_index_milvus_instance_milvus_instance_args_doc}
/// The set of arguments for MilvusInstance.
/// {@endtemplate}
/// {@macro pulumi_index_milvus_instance_milvus_instance_args_doc}
class MilvusInstanceArgs {
  /// Whether to enable automatic backup
  final pulumi.Input<bool>? autoBackup;
  /// Instance component information. Includes Starter Edition/Standard Edition.
  /// - Starter version: Array including standalone
  /// - Standard Edition: The configuration is different according to the 2.5 version and 2.6 version.
  /// 2.5: proxy ,mix_coordinator,data,query,index
  /// 2.6 need to configure: proxy,mix_coordinator,data,query,streaming See `components` below.
  final pulumi.Input<List<MilvusInstanceComponent>>? components;
  /// User-defined configuration
  final pulumi.Input<String>? configuration;
  /// DB administrator password, which can be used to log in to attu.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? dbAdminPassword;
  /// Milvus kernel version. Supported versions: 2.4, 2.5, 2.6.
  final pulumi.Input<String> dbVersion;
  /// Whether to use kms encryption. After enabling, you need to configure KmsKeyId. The default is false.
  final pulumi.Input<bool>? encrypted;
  /// Whether to enable multiple copies of data
  final pulumi.Input<bool>? ha;
  /// Instance name. The length is limited to 1-64 characters and can only contain Chinese, letters, numbers,-,_
  final pulumi.Input<String> instanceName;
  /// Kms Key encryption id, need to be encrypted set to true.
  final pulumi.Input<String>? kmsKeyId;
  /// Availability Zone mode. The default Single.
  /// - Single: Single zone.
  /// - Two: Dual Availability Zones.
  final pulumi.Input<String>? multiZoneMode;
  /// Instance Payment Duration
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? paymentDuration;
  /// Paid unit , Enumeration value:
  /// - Month: Month
  /// - Year: Year
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? paymentDurationUnit;
  /// Payment Type ,Enumeration value:
  /// - PayAsYouGo: Pay by volume
  /// - Subscription: Package year package month
  final pulumi.Input<String> paymentType;
  /// Resource Group ID
  final pulumi.Input<String>? resourceGroupId;
  /// User Defined Label
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC network ID. vpc-xxx.
  final pulumi.Input<String> vpcId;
  /// Switch list, configure the switch and zone. See `vswitch_ids` below.
  final pulumi.Input<List<MilvusInstanceVswitchId>>? vswitchIds;
  /// The zone id. When multi-zone is enabled, it represents the primary zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [MilvusInstanceArgs].
  /// [autoBackup] Whether to enable automatic backup
  /// [components] Instance component information. Includes Starter Edition/Standard Edition.
  /// [configuration] User-defined configuration
  /// [dbAdminPassword] DB administrator password, which can be used to log in to attu.
  /// [dbVersion] Milvus kernel version. Supported versions: 2.4, 2.5, 2.6.
  /// [encrypted] Whether to use kms encryption. After enabling, you need to configure KmsKeyId. The default is false.
  /// [ha] Whether to enable multiple copies of data
  /// [instanceName] Instance name. The length is limited to 1-64 characters and can only contain Chinese, letters, numbers,-,_
  /// [kmsKeyId] Kms Key encryption id, need to be encrypted set to true.
  /// [multiZoneMode] Availability Zone mode. The default Single.
  /// [paymentDuration] Instance Payment Duration
  /// [paymentDurationUnit] Paid unit , Enumeration value:
  /// [paymentType] Payment Type ,Enumeration value:
  /// [resourceGroupId] Resource Group ID
  /// [tags] User Defined Label
  /// [vpcId] The VPC network ID. vpc-xxx.
  /// [vswitchIds] Switch list, configure the switch and zone. See `vswitch_ids` below.
  /// [zoneId] The zone id. When multi-zone is enabled, it represents the primary zone.
  MilvusInstanceArgs({
    this.autoBackup,
    this.components,
    this.configuration,
    this.dbAdminPassword,
    required this.dbVersion,
    this.encrypted,
    this.ha,
    required this.instanceName,
    this.kmsKeyId,
    this.multiZoneMode,
    this.paymentDuration,
    this.paymentDurationUnit,
    required this.paymentType,
    this.resourceGroupId,
    this.tags,
    required this.vpcId,
    this.vswitchIds,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoBackup': ?autoBackup,
      'components': ?pulumi.Input.mapOptionalInputValue<List<MilvusInstanceComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<MilvusInstanceComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configuration': ?configuration,
      'dbAdminPassword': ?dbAdminPassword,
      'dbVersion': dbVersion,
      'encrypted': ?encrypted,
      'ha': ?ha,
      'instanceName': instanceName,
      'kmsKeyId': ?kmsKeyId,
      'multiZoneMode': ?multiZoneMode,
      'paymentDuration': ?paymentDuration,
      'paymentDurationUnit': ?paymentDurationUnit,
      'paymentType': paymentType,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vpcId': vpcId,
      'vswitchIds': ?pulumi.Input.mapOptionalInputValue<List<MilvusInstanceVswitchId>, List<Map<String, dynamic>>>(vswitchIds, (value) => pulumi.Input.encodeList<MilvusInstanceVswitchId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory MilvusInstanceArgs.fromMap(Map<String, dynamic> map) {
    return MilvusInstanceArgs(
      autoBackup: map['autoBackup'] == null ? null : (map['autoBackup'] as bool).input(),
      components: map['components'] == null ? null : (pulumi.Input.decodeList<MilvusInstanceComponent>(map['components'], (value) => MilvusInstanceComponent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configuration: map['configuration'] == null ? null : (map['configuration'] as String).input(),
      dbAdminPassword: map['dbAdminPassword'] == null ? null : (map['dbAdminPassword'] as String).input(),
      dbVersion: (map['dbVersion'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      ha: map['ha'] == null ? null : (map['ha'] as bool).input(),
      instanceName: (map['instanceName'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      multiZoneMode: map['multiZoneMode'] == null ? null : (map['multiZoneMode'] as String).input(),
      paymentDuration: map['paymentDuration'] == null ? null : (map['paymentDuration'] as int).input(),
      paymentDurationUnit: map['paymentDurationUnit'] == null ? null : (map['paymentDurationUnit'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchIds: map['vswitchIds'] == null ? null : (pulumi.Input.decodeList<MilvusInstanceVswitchId>(map['vswitchIds'], (value) => MilvusInstanceVswitchId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

