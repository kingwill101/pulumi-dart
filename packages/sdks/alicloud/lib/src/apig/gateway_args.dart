// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_log_config.dart';
import 'gateway_network_access_config.dart';
import 'gateway_vpc.dart';
import 'gateway_vswitch.dart';
import 'gateway_zone.dart';
import 'gateway_zone_config.dart';

/// {@template pulumi_apig_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_apig_gateway_gateway_args_doc}
class GatewayArgs {
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
  final pulumi.Input<String> paymentType;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Gateway instance specifications
  final pulumi.Input<String>? spec;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC associated with the Gateway. See `vpc` below.
  final pulumi.Input<GatewayVpc>? vpc;
  /// The virtual switch associated with the Gateway. See `vswitch` below.
  final pulumi.Input<GatewayVswitch>? vswitch;
  /// Availability Zone Configuration See `zone_config` below.
  final pulumi.Input<GatewayZoneConfig> zoneConfig;
  /// The List of zones associated with the Gateway. See `zones` below.
  final pulumi.Input<List<GatewayZone>>? zones;

  /// Creates a new [GatewayArgs].
  /// [gatewayName] The name of the resource
  /// [gatewayType] Describes the gateway type, which is categorized into the following two types:
  /// [logConfig] Log Configuration See `log_config` below.
  /// [networkAccessConfig] Network Access Configuration See `network_access_config` below.
  /// [paymentType] The payment type of the resource
  /// [resourceGroupId] The ID of the resource group
  /// [spec] Gateway instance specifications
  /// [tags] The tag of the resource
  /// [vpc] The VPC associated with the Gateway. See `vpc` below.
  /// [vswitch] The virtual switch associated with the Gateway. See `vswitch` below.
  /// [zoneConfig] Availability Zone Configuration See `zone_config` below.
  /// [zones] The List of zones associated with the Gateway. See `zones` below.
  const GatewayArgs({
    this.gatewayName,
    this.gatewayType,
    this.logConfig,
    this.networkAccessConfig,
    required this.paymentType,
    this.resourceGroupId,
    this.spec,
    this.tags,
    this.vpc,
    this.vswitch,
    required this.zoneConfig,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': ?gatewayName,
      'gatewayType': ?gatewayType,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<GatewayLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'networkAccessConfig': ?pulumi.Input.mapOptionalInputValue<GatewayNetworkAccessConfig, Map<String, dynamic>>(networkAccessConfig, (value) => value.toMap()),
      'paymentType': paymentType,
      'resourceGroupId': ?resourceGroupId,
      'spec': ?spec,
      'tags': ?tags,
      'vpc': ?pulumi.Input.mapOptionalInputValue<GatewayVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
      'vswitch': ?pulumi.Input.mapOptionalInputValue<GatewayVswitch, Map<String, dynamic>>(vswitch, (value) => value.toMap()),
      'zoneConfig': pulumi.Input.mapInputValue<GatewayZoneConfig, Map<String, dynamic>>(zoneConfig, (value) => value.toMap()),
      'zones': ?pulumi.Input.mapOptionalInputValue<List<GatewayZone>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<GatewayZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      gatewayName: (() { final guardedValue = map['gatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayType: (() { final guardedValue = map['gatewayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkAccessConfig: (() { final guardedValue = map['networkAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayNetworkAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vswitch: (() { final guardedValue = map['vswitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVswitch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneConfig: pulumi.Input.fromValue(GatewayZoneConfig.fromMap((map['zoneConfig']! as Map).cast<String, dynamic>())),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GatewayZone>(guardedValue, (value) => GatewayZone.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

