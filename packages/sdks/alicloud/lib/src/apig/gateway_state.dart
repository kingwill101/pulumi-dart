// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_log_config.dart';
import 'gateway_network_access_config.dart';
import 'gateway_vpc.dart';
import 'gateway_vswitch.dart';
import 'gateway_zone.dart';
import 'gateway_zone_config.dart';

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
  /// The creation timestamp. Unit: milliseconds.
  final pulumi.Input<int>? createTime;
  /// The name of the resource
  final pulumi.Input<String>? gatewayName;
  /// Describes the gateway type, which is categorized into the following two types:
  /// - API: indicates an API gateway
  /// - AI: Indicates an AI gateway
  final pulumi.Input<String>? gatewayType;
  /// Log Configuration See `log_config` below.
  final pulumi.Input<GatewayLogConfig>? logConfig;
  /// Network Access Configuration See `network_access_config` below.
  final pulumi.Input<GatewayNetworkAccessConfig>? networkAccessConfig;
  /// The payment type of the resource
  final pulumi.Input<String>? paymentType;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Gateway instance specifications
  final pulumi.Input<String>? spec;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC associated with the Gateway. See `vpc` below.
  final pulumi.Input<GatewayVpc>? vpc;
  /// The virtual switch associated with the Gateway. See `vswitch` below.
  final pulumi.Input<GatewayVswitch>? vswitch;
  /// Availability Zone Configuration See `zone_config` below.
  final pulumi.Input<GatewayZoneConfig>? zoneConfig;
  /// The List of zones associated with the Gateway. See `zones` below.
  final pulumi.Input<List<GatewayZone>>? zones;

  /// Creates a new [GatewayState].
  /// [createTime] The creation timestamp. Unit: milliseconds.
  /// [gatewayName] The name of the resource
  /// [gatewayType] Describes the gateway type, which is categorized into the following two types:
  /// [logConfig] Log Configuration See `log_config` below.
  /// [networkAccessConfig] Network Access Configuration See `network_access_config` below.
  /// [paymentType] The payment type of the resource
  /// [resourceGroupId] The ID of the resource group
  /// [spec] Gateway instance specifications
  /// [status] The status of the resource
  /// [tags] The tag of the resource
  /// [vpc] The VPC associated with the Gateway. See `vpc` below.
  /// [vswitch] The virtual switch associated with the Gateway. See `vswitch` below.
  /// [zoneConfig] Availability Zone Configuration See `zone_config` below.
  /// [zones] The List of zones associated with the Gateway. See `zones` below.
  GatewayState({
    this.createTime,
    this.gatewayName,
    this.gatewayType,
    this.logConfig,
    this.networkAccessConfig,
    this.paymentType,
    this.resourceGroupId,
    this.spec,
    this.status,
    this.tags,
    this.vpc,
    this.vswitch,
    this.zoneConfig,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'gatewayName': ?gatewayName,
      'gatewayType': ?gatewayType,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<GatewayLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'networkAccessConfig': ?pulumi.Input.mapOptionalInputValue<GatewayNetworkAccessConfig, Map<String, dynamic>>(networkAccessConfig, (value) => value.toMap()),
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'spec': ?spec,
      'status': ?status,
      'tags': ?tags,
      'vpc': ?pulumi.Input.mapOptionalInputValue<GatewayVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
      'vswitch': ?pulumi.Input.mapOptionalInputValue<GatewayVswitch, Map<String, dynamic>>(vswitch, (value) => value.toMap()),
      'zoneConfig': ?pulumi.Input.mapOptionalInputValue<GatewayZoneConfig, Map<String, dynamic>>(zoneConfig, (value) => value.toMap()),
      'zones': ?pulumi.Input.mapOptionalInputValue<List<GatewayZone>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<GatewayZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as int).input(),
      gatewayName: map['gatewayName'] == null ? null : (map['gatewayName']! as String).input(),
      gatewayType: map['gatewayType'] == null ? null : (map['gatewayType']! as String).input(),
      logConfig: map['logConfig'] == null ? null : (GatewayLogConfig.fromMap((map['logConfig']! as Map).cast<String, dynamic>())).input(),
      networkAccessConfig: map['networkAccessConfig'] == null ? null : (GatewayNetworkAccessConfig.fromMap((map['networkAccessConfig']! as Map).cast<String, dynamic>())).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      spec: map['spec'] == null ? null : (map['spec']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpc: map['vpc'] == null ? null : (GatewayVpc.fromMap((map['vpc']! as Map).cast<String, dynamic>())).input(),
      vswitch: map['vswitch'] == null ? null : (GatewayVswitch.fromMap((map['vswitch']! as Map).cast<String, dynamic>())).input(),
      zoneConfig: map['zoneConfig'] == null ? null : (GatewayZoneConfig.fromMap((map['zoneConfig']! as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : (pulumi.Input.decodeList<GatewayZone>(map['zones']!, (value) => GatewayZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

