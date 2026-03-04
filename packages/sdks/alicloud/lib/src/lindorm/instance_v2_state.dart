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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? archVersion;

  /// Automatic renewal duration. Unit: Month.
  ///
  /// Value range: `1` to `12`.
  ///
  /// &gt; **NOTE:**  This item takes effect only when `AutoRenewal` is `true`.
  ///
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? autoRenewDuration;

  /// Whether the instance is automatically renewed. Enumerated values:
  final pulumi.Input<bool>? autoRenewal;

  /// The Sales page storage type supports cloud storage and local sites. If you select cloud storage, this parameter is required.
  ///
  /// &gt; **NOTE:**  Cloud storage capacity in GB
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
    this.arbiterVswitchId,
    this.arbiterZoneId,
    this.archVersion,
    this.autoRenewDuration,
    this.autoRenewal,
    this.cloudStorageSize,
    this.cloudStorageType,
    this.deletionProtection,
    this.duration,
    this.engineLists,
    this.instanceAlias,
    this.paymentType,
    this.pricingCycle,
    this.primaryVswitchId,
    this.primaryZoneId,
    this.regionId,
    this.standbyVswitchId,
    this.standbyZoneId,
    this.vpcId,
    this.vswitchId,
    this.whiteIpLists,
    this.zoneId,
  });

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
      'engineLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceV2EngineList>,
            List<Map<String, dynamic>>
          >(
            engineLists,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceV2EngineList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'whiteIpLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceV2WhiteIpList>,
            List<Map<String, dynamic>>
          >(
            whiteIpLists,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceV2WhiteIpList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'zoneId': ?zoneId,
    };
  }

  factory InstanceV2State.fromMap(Map<String, dynamic> map) {
    return InstanceV2State(
      arbiterVswitchId: (() {
        final guardedValue = map['arbiterVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arbiterZoneId: (() {
        final guardedValue = map['arbiterZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      archVersion: (() {
        final guardedValue = map['archVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoRenewDuration: (() {
        final guardedValue = map['autoRenewDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoRenewal: (() {
        final guardedValue = map['autoRenewal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cloudStorageSize: (() {
        final guardedValue = map['cloudStorageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cloudStorageType: (() {
        final guardedValue = map['cloudStorageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      duration: (() {
        final guardedValue = map['duration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      engineLists: (() {
        final guardedValue = map['engineLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceV2EngineList>(
            guardedValue,
            (value) => InstanceV2EngineList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      instanceAlias: (() {
        final guardedValue = map['instanceAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pricingCycle: (() {
        final guardedValue = map['pricingCycle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryVswitchId: (() {
        final guardedValue = map['primaryVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryZoneId: (() {
        final guardedValue = map['primaryZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      standbyVswitchId: (() {
        final guardedValue = map['standbyVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      standbyZoneId: (() {
        final guardedValue = map['standbyZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      whiteIpLists: (() {
        final guardedValue = map['whiteIpLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceV2WhiteIpList>(
            guardedValue,
            (value) => InstanceV2WhiteIpList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
