// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'milvus_instance_component.dart';
import 'milvus_instance_vswitch_id.dart';

/// Input properties used for looking up and filtering MilvusInstance resources.
class MilvusInstanceState {
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
  /// Instance creation time.
  final pulumi.Input<String>? createTime;
  /// DB administrator password, which can be used to log in to attu.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? dbAdminPassword;
  /// Milvus kernel version. Supported versions: 2.4, 2.5, 2.6.
  final pulumi.Input<String>? dbVersion;
  /// Whether to use kms encryption. After enabling, you need to configure KmsKeyId. The default is false.
  final pulumi.Input<bool>? encrypted;
  /// Whether to enable multiple copies of data
  final pulumi.Input<bool>? ha;
  /// Instance name. The length is limited to 1-64 characters and can only contain Chinese, letters, numbers,-,_
  final pulumi.Input<String>? instanceName;
  /// Kms Key encryption id, need to be encrypted set to true.
  final pulumi.Input<String>? kmsKeyId;
  /// Availability Zone mode. The default Single.
  /// - Single: Single zone.
  /// - Two: Dual Availability Zones.
  final pulumi.Input<String>? multiZoneMode;
  /// Instance Payment Duration
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? paymentDuration;
  /// Paid unit , Enumeration value:
  /// - Month: Month
  /// - Year: Year
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? paymentDurationUnit;
  /// Payment Type ,Enumeration value:
  /// - PayAsYouGo: Pay by volume
  /// - Subscription: Package year package month
  final pulumi.Input<String>? paymentType;
  /// regionId. For example: cn-hangzhou
  final pulumi.Input<String>? regionId;
  /// Resource Group ID
  final pulumi.Input<String>? resourceGroupId;
  /// Instance status. Value range:
  final pulumi.Input<String>? status;
  /// User Defined Label
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC network ID. vpc-xxx.
  final pulumi.Input<String>? vpcId;
  /// Switch list, configure the switch and zone. See `vswitch_ids` below.
  final pulumi.Input<List<MilvusInstanceVswitchId>>? vswitchIds;
  /// The zone id. When multi-zone is enabled, it represents the primary zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [MilvusInstanceState].
  /// [autoBackup] Whether to enable automatic backup
  /// [components] Instance component information. Includes Starter Edition/Standard Edition.
  /// [configuration] User-defined configuration
  /// [createTime] Instance creation time.
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
  /// [regionId] regionId. For example: cn-hangzhou
  /// [resourceGroupId] Resource Group ID
  /// [status] Instance status. Value range:
  /// [tags] User Defined Label
  /// [vpcId] The VPC network ID. vpc-xxx.
  /// [vswitchIds] Switch list, configure the switch and zone. See `vswitch_ids` below.
  /// [zoneId] The zone id. When multi-zone is enabled, it represents the primary zone.
  MilvusInstanceState({
    this.autoBackup,
    this.components,
    this.configuration,
    this.createTime,
    this.dbAdminPassword,
    this.dbVersion,
    this.encrypted,
    this.ha,
    this.instanceName,
    this.kmsKeyId,
    this.multiZoneMode,
    this.paymentDuration,
    this.paymentDurationUnit,
    this.paymentType,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchIds,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoBackup': ?autoBackup,
      'components': ?pulumi.Input.mapOptionalInputValue<List<MilvusInstanceComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<MilvusInstanceComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configuration': ?configuration,
      'createTime': ?createTime,
      'dbAdminPassword': ?dbAdminPassword,
      'dbVersion': ?dbVersion,
      'encrypted': ?encrypted,
      'ha': ?ha,
      'instanceName': ?instanceName,
      'kmsKeyId': ?kmsKeyId,
      'multiZoneMode': ?multiZoneMode,
      'paymentDuration': ?paymentDuration,
      'paymentDurationUnit': ?paymentDurationUnit,
      'paymentType': ?paymentType,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchIds': ?pulumi.Input.mapOptionalInputValue<List<MilvusInstanceVswitchId>, List<Map<String, dynamic>>>(vswitchIds, (value) => pulumi.Input.encodeList<MilvusInstanceVswitchId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory MilvusInstanceState.fromMap(Map<String, dynamic> map) {
    return MilvusInstanceState(
      autoBackup: (() { final guardedValue = map['autoBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MilvusInstanceComponent>(guardedValue, (value) => MilvusInstanceComponent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbAdminPassword: (() { final guardedValue = map['dbAdminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbVersion: (() { final guardedValue = map['dbVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ha: (() { final guardedValue = map['ha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiZoneMode: (() { final guardedValue = map['multiZoneMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentDuration: (() { final guardedValue = map['paymentDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      paymentDurationUnit: (() { final guardedValue = map['paymentDurationUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchIds: (() { final guardedValue = map['vswitchIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MilvusInstanceVswitchId>(guardedValue, (value) => MilvusInstanceVswitchId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

