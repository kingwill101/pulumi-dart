// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_v2_engine_list.dart';
import 'instance_v2_white_ip_list.dart';

/// {@template pulumi_lindorm_instance_v2_instance_v2_args_doc}
/// The set of arguments for InstanceV2.
/// {@endtemplate}
/// {@macro pulumi_lindorm_instance_v2_instance_v2_args_doc}
class InstanceV2Args {
  /// Coordination Zone VswitchId
  final pulumi.Input<String>? arbiterVswitchId;
  /// Coordination Zone ZoneId
  final pulumi.Input<String>? arbiterZoneId;
  /// Deployment Scenario
  ///
  /// Enumeration value:
  /// - **1.0**: Single Zone
  /// - **2.0**: Multi-AZ Basic Edition
  /// - **3.0**: Multi-AZ High Availability Edition
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String> archVersion;
  /// Automatic renewal duration. Unit: Month.
  ///
  /// Value range: `1` to `12`.
  ///
  /// > **NOTE:**  This item takes effect only when `AutoRenewal` is `true`.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? autoRenewDuration;
  /// Whether the instance is automatically renewed. Enumerated values:
  final pulumi.Input<bool>? autoRenewal;
  /// The Sales page storage type supports cloud storage and local sites. If you select cloud storage, this parameter is required.
  ///
  /// > **NOTE:**  Cloud storage capacity in GB
  final pulumi.Input<int>? cloudStorageSize;
  /// Cloud storage type, the sales page storage type supports cloud storage and local sites. If you select cloud storage, this parameter is required.
  ///
  /// Enumeration value:
  /// - `StandardStorage`: Standard cloud storage
  /// - **Performance storage**: Performance-based cloud storage
  /// - **Capacity Storage**: Capacity-based cloud storage
  final pulumi.Input<String>? cloudStorageType;
  /// Whether to enable deletion protection
  final pulumi.Input<String>? deletionProtection;
  /// The specified duration when the resource is purchased. Only the subscription instances are valid.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? duration;
  /// Engine List See `engine_list` below.
  final pulumi.Input<List<InstanceV2EngineList>> engineLists;
  /// Instance name
  final pulumi.Input<String> instanceAlias;
  /// Resource attribute fields representing payment types
  ///
  /// Enumeration value:
  /// - `PREPAY`: Prepaid mode
  /// - `POSTPAY`: Postpay mode
  final pulumi.Input<String> paymentType;
  /// Purchase duration unit: Month, Year
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? pricingCycle;
  /// Primary zone VswitchId
  final pulumi.Input<String>? primaryVswitchId;
  /// Primary zone ZoneID
  final pulumi.Input<String>? primaryZoneId;
  /// Standby zone VswitchId
  final pulumi.Input<String>? standbyVswitchId;
  /// Standby zone ZoneID
  final pulumi.Input<String>? standbyZoneId;
  /// VpcId
  final pulumi.Input<String> vpcId;
  /// VswitchId
  final pulumi.Input<String> vswitchId;
  /// Instance whitelist list See `white_ip_list` below.
  final pulumi.Input<List<InstanceV2WhiteIpList>>? whiteIpLists;
  /// The zone ID  of the resource
  final pulumi.Input<String> zoneId;

  /// Creates a new [InstanceV2Args].
  /// [arbiterVswitchId] Coordination Zone VswitchId
  /// [arbiterZoneId] Coordination Zone ZoneId
  /// [archVersion] Deployment Scenario
  /// [autoRenewDuration] Automatic renewal duration. Unit: Month.
  /// [autoRenewal] Whether the instance is automatically renewed. Enumerated values:
  /// [cloudStorageSize] The Sales page storage type supports cloud storage and local sites. If you select cloud storage, this parameter is required.
  /// [cloudStorageType] Cloud storage type, the sales page storage type supports cloud storage and local sites. If you select cloud storage, this parameter is required.
  /// [deletionProtection] Whether to enable deletion protection
  /// [duration] The specified duration when the resource is purchased. Only the subscription instances are valid.
  /// [engineLists] Engine List See `engine_list` below.
  /// [instanceAlias] Instance name
  /// [paymentType] Resource attribute fields representing payment types
  /// [pricingCycle] Purchase duration unit: Month, Year
  /// [primaryVswitchId] Primary zone VswitchId
  /// [primaryZoneId] Primary zone ZoneID
  /// [standbyVswitchId] Standby zone VswitchId
  /// [standbyZoneId] Standby zone ZoneID
  /// [vpcId] VpcId
  /// [vswitchId] VswitchId
  /// [whiteIpLists] Instance whitelist list See `white_ip_list` below.
  /// [zoneId] The zone ID  of the resource
  InstanceV2Args({
    String? arbiterVswitchId,
    String? arbiterZoneId,
    required String archVersion,
    String? autoRenewDuration,
    bool? autoRenewal,
    int? cloudStorageSize,
    String? cloudStorageType,
    String? deletionProtection,
    int? duration,
    required List<InstanceV2EngineList> engineLists,
    required String instanceAlias,
    required String paymentType,
    String? pricingCycle,
    String? primaryVswitchId,
    String? primaryZoneId,
    String? standbyVswitchId,
    String? standbyZoneId,
    required String vpcId,
    required String vswitchId,
    List<InstanceV2WhiteIpList>? whiteIpLists,
    required String zoneId,
  }) :
      arbiterVswitchId = pulumi.Input.asOptionalInput<String>(arbiterVswitchId),
      arbiterZoneId = pulumi.Input.asOptionalInput<String>(arbiterZoneId),
      archVersion = pulumi.Input.asInput<String>(archVersion),
      autoRenewDuration = pulumi.Input.asOptionalInput<String>(autoRenewDuration),
      autoRenewal = pulumi.Input.asOptionalInput<bool>(autoRenewal),
      cloudStorageSize = pulumi.Input.asOptionalInput<int>(cloudStorageSize),
      cloudStorageType = pulumi.Input.asOptionalInput<String>(cloudStorageType),
      deletionProtection = pulumi.Input.asOptionalInput<String>(deletionProtection),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      engineLists = pulumi.Input.asInput<List<InstanceV2EngineList>>(engineLists),
      instanceAlias = pulumi.Input.asInput<String>(instanceAlias),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      primaryVswitchId = pulumi.Input.asOptionalInput<String>(primaryVswitchId),
      primaryZoneId = pulumi.Input.asOptionalInput<String>(primaryZoneId),
      standbyVswitchId = pulumi.Input.asOptionalInput<String>(standbyVswitchId),
      standbyZoneId = pulumi.Input.asOptionalInput<String>(standbyZoneId),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      whiteIpLists = pulumi.Input.asOptionalInput<List<InstanceV2WhiteIpList>>(whiteIpLists),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arbiterVswitchId': ?arbiterVswitchId,
      'arbiterZoneId': ?arbiterZoneId,
      'archVersion': archVersion,
      'autoRenewDuration': ?autoRenewDuration,
      'autoRenewal': ?autoRenewal,
      'cloudStorageSize': ?cloudStorageSize,
      'cloudStorageType': ?cloudStorageType,
      'deletionProtection': ?deletionProtection,
      'duration': ?duration,
      'engineLists': pulumi.Input.mapInputValue<List<InstanceV2EngineList>, List<Map<String, dynamic>>>(engineLists, (value) => pulumi.Input.encodeList<InstanceV2EngineList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceAlias': instanceAlias,
      'paymentType': paymentType,
      'pricingCycle': ?pricingCycle,
      'primaryVswitchId': ?primaryVswitchId,
      'primaryZoneId': ?primaryZoneId,
      'standbyVswitchId': ?standbyVswitchId,
      'standbyZoneId': ?standbyZoneId,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'whiteIpLists': ?pulumi.Input.mapOptionalInputValue<List<InstanceV2WhiteIpList>, List<Map<String, dynamic>>>(whiteIpLists, (value) => pulumi.Input.encodeList<InstanceV2WhiteIpList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory InstanceV2Args.fromMap(Map<String, dynamic> map) {
    return InstanceV2Args(
      arbiterVswitchId: map['arbiterVswitchId'] == null ? null : map['arbiterVswitchId'] as String,
      arbiterZoneId: map['arbiterZoneId'] == null ? null : map['arbiterZoneId'] as String,
      archVersion: map['archVersion'] as String,
      autoRenewDuration: map['autoRenewDuration'] == null ? null : map['autoRenewDuration'] as String,
      autoRenewal: map['autoRenewal'] == null ? null : map['autoRenewal'] as bool,
      cloudStorageSize: map['cloudStorageSize'] == null ? null : map['cloudStorageSize'] as int,
      cloudStorageType: map['cloudStorageType'] == null ? null : map['cloudStorageType'] as String,
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as String,
      duration: map['duration'] == null ? null : map['duration'] as int,
      engineLists: pulumi.Input.decodeList<InstanceV2EngineList>(map['engineLists'], (value) => InstanceV2EngineList.fromMap((value as Map).cast<String, dynamic>())),
      instanceAlias: map['instanceAlias'] as String,
      paymentType: map['paymentType'] as String,
      pricingCycle: map['pricingCycle'] == null ? null : map['pricingCycle'] as String,
      primaryVswitchId: map['primaryVswitchId'] == null ? null : map['primaryVswitchId'] as String,
      primaryZoneId: map['primaryZoneId'] == null ? null : map['primaryZoneId'] as String,
      standbyVswitchId: map['standbyVswitchId'] == null ? null : map['standbyVswitchId'] as String,
      standbyZoneId: map['standbyZoneId'] == null ? null : map['standbyZoneId'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      whiteIpLists: map['whiteIpLists'] == null ? null : pulumi.Input.decodeList<InstanceV2WhiteIpList>(map['whiteIpLists'], (value) => InstanceV2WhiteIpList.fromMap((value as Map).cast<String, dynamic>())),
      zoneId: map['zoneId'] as String,
    );
  }
}

