// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_v2_engine_list.dart';
import 'instance_v2_white_ip_list.dart';

/// Input properties used for looking up and filtering InstanceV2 resources.
class InstanceV2State {
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
  final pulumi.Input<String>? archVersion;
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
  final pulumi.Input<List<InstanceV2EngineList>>? engineLists;
  /// Instance name
  final pulumi.Input<String>? instanceAlias;
  /// Resource attribute fields representing payment types
  ///
  /// Enumeration value:
  /// - `PREPAY`: Prepaid mode
  /// - `POSTPAY`: Postpay mode
  final pulumi.Input<String>? paymentType;
  /// Purchase duration unit: Month, Year
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? pricingCycle;
  /// Primary zone VswitchId
  final pulumi.Input<String>? primaryVswitchId;
  /// Primary zone ZoneID
  final pulumi.Input<String>? primaryZoneId;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// Standby zone VswitchId
  final pulumi.Input<String>? standbyVswitchId;
  /// Standby zone ZoneID
  final pulumi.Input<String>? standbyZoneId;
  /// VpcId
  final pulumi.Input<String>? vpcId;
  /// VswitchId
  final pulumi.Input<String>? vswitchId;
  /// Instance whitelist list See `white_ip_list` below.
  final pulumi.Input<List<InstanceV2WhiteIpList>>? whiteIpLists;
  /// The zone ID  of the resource
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceV2State].
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
  /// [regionId] The region ID of the resource
  /// [standbyVswitchId] Standby zone VswitchId
  /// [standbyZoneId] Standby zone ZoneID
  /// [vpcId] VpcId
  /// [vswitchId] VswitchId
  /// [whiteIpLists] Instance whitelist list See `white_ip_list` below.
  /// [zoneId] The zone ID  of the resource
  InstanceV2State({
    pulumi.Output<String>? arbiterVswitchId,
    pulumi.Output<String>? arbiterZoneId,
    pulumi.Output<String>? archVersion,
    pulumi.Output<String>? autoRenewDuration,
    pulumi.Output<bool>? autoRenewal,
    pulumi.Output<int>? cloudStorageSize,
    pulumi.Output<String>? cloudStorageType,
    pulumi.Output<String>? deletionProtection,
    pulumi.Output<int>? duration,
    pulumi.Output<List<InstanceV2EngineList>>? engineLists,
    pulumi.Output<String>? instanceAlias,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? primaryVswitchId,
    pulumi.Output<String>? primaryZoneId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? standbyVswitchId,
    pulumi.Output<String>? standbyZoneId,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<List<InstanceV2WhiteIpList>>? whiteIpLists,
    pulumi.Output<String>? zoneId,
  }) :
      arbiterVswitchId = pulumi.Input.asOptionalInput<String>(arbiterVswitchId),
      arbiterZoneId = pulumi.Input.asOptionalInput<String>(arbiterZoneId),
      archVersion = pulumi.Input.asOptionalInput<String>(archVersion),
      autoRenewDuration = pulumi.Input.asOptionalInput<String>(autoRenewDuration),
      autoRenewal = pulumi.Input.asOptionalInput<bool>(autoRenewal),
      cloudStorageSize = pulumi.Input.asOptionalInput<int>(cloudStorageSize),
      cloudStorageType = pulumi.Input.asOptionalInput<String>(cloudStorageType),
      deletionProtection = pulumi.Input.asOptionalInput<String>(deletionProtection),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      engineLists = pulumi.Input.asOptionalInput<List<InstanceV2EngineList>>(engineLists),
      instanceAlias = pulumi.Input.asOptionalInput<String>(instanceAlias),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      primaryVswitchId = pulumi.Input.asOptionalInput<String>(primaryVswitchId),
      primaryZoneId = pulumi.Input.asOptionalInput<String>(primaryZoneId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      standbyVswitchId = pulumi.Input.asOptionalInput<String>(standbyVswitchId),
      standbyZoneId = pulumi.Input.asOptionalInput<String>(standbyZoneId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      whiteIpLists = pulumi.Input.asOptionalInput<List<InstanceV2WhiteIpList>>(whiteIpLists),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arbiterVswitchId': ?arbiterVswitchId,
      'arbiterZoneId': ?arbiterZoneId,
      'archVersion': ?archVersion,
      'autoRenewDuration': ?autoRenewDuration,
      'autoRenewal': ?autoRenewal,
      'cloudStorageSize': ?cloudStorageSize,
      'cloudStorageType': ?cloudStorageType,
      'deletionProtection': ?deletionProtection,
      'duration': ?duration,
      'engineLists': ?pulumi.Input.mapOptionalInputValue<List<InstanceV2EngineList>, List<Map<String, dynamic>>>(engineLists, (value) => pulumi.Input.encodeList<InstanceV2EngineList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceAlias': ?instanceAlias,
      'paymentType': ?paymentType,
      'pricingCycle': ?pricingCycle,
      'primaryVswitchId': ?primaryVswitchId,
      'primaryZoneId': ?primaryZoneId,
      'regionId': ?regionId,
      'standbyVswitchId': ?standbyVswitchId,
      'standbyZoneId': ?standbyZoneId,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'whiteIpLists': ?pulumi.Input.mapOptionalInputValue<List<InstanceV2WhiteIpList>, List<Map<String, dynamic>>>(whiteIpLists, (value) => pulumi.Input.encodeList<InstanceV2WhiteIpList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory InstanceV2State.fromMap(Map<String, dynamic> map) {
    return InstanceV2State(
      arbiterVswitchId: map['arbiterVswitchId'] == null ? null : pulumi.Output.create<String>(map['arbiterVswitchId'] as String),
      arbiterZoneId: map['arbiterZoneId'] == null ? null : pulumi.Output.create<String>(map['arbiterZoneId'] as String),
      archVersion: map['archVersion'] == null ? null : pulumi.Output.create<String>(map['archVersion'] as String),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : pulumi.Output.create<String>(map['autoRenewDuration'] as String),
      autoRenewal: map['autoRenewal'] == null ? null : pulumi.Output.create<bool>(map['autoRenewal'] as bool),
      cloudStorageSize: map['cloudStorageSize'] == null ? null : pulumi.Output.create<int>(map['cloudStorageSize'] as int),
      cloudStorageType: map['cloudStorageType'] == null ? null : pulumi.Output.create<String>(map['cloudStorageType'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<String>(map['deletionProtection'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      engineLists: map['engineLists'] == null ? null : pulumi.Output.create<List<InstanceV2EngineList>>(pulumi.Input.decodeList<InstanceV2EngineList>(map['engineLists'], (value) => InstanceV2EngineList.fromMap((value as Map).cast<String, dynamic>()))),
      instanceAlias: map['instanceAlias'] == null ? null : pulumi.Output.create<String>(map['instanceAlias'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      primaryVswitchId: map['primaryVswitchId'] == null ? null : pulumi.Output.create<String>(map['primaryVswitchId'] as String),
      primaryZoneId: map['primaryZoneId'] == null ? null : pulumi.Output.create<String>(map['primaryZoneId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      standbyVswitchId: map['standbyVswitchId'] == null ? null : pulumi.Output.create<String>(map['standbyVswitchId'] as String),
      standbyZoneId: map['standbyZoneId'] == null ? null : pulumi.Output.create<String>(map['standbyZoneId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      whiteIpLists: map['whiteIpLists'] == null ? null : pulumi.Output.create<List<InstanceV2WhiteIpList>>(pulumi.Input.decodeList<InstanceV2WhiteIpList>(map['whiteIpLists'], (value) => InstanceV2WhiteIpList.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

