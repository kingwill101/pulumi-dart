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
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? gatewayName,
    pulumi.Output<String>? gatewayType,
    pulumi.Output<GatewayLogConfig>? logConfig,
    pulumi.Output<GatewayNetworkAccessConfig>? networkAccessConfig,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? spec,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<GatewayVpc>? vpc,
    pulumi.Output<GatewayVswitch>? vswitch,
    pulumi.Output<GatewayZoneConfig>? zoneConfig,
    pulumi.Output<List<GatewayZone>>? zones,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      gatewayName = pulumi.Input.asOptionalInput<String>(gatewayName),
      gatewayType = pulumi.Input.asOptionalInput<String>(gatewayType),
      logConfig = pulumi.Input.asOptionalInput<GatewayLogConfig>(logConfig),
      networkAccessConfig = pulumi.Input.asOptionalInput<GatewayNetworkAccessConfig>(networkAccessConfig),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      spec = pulumi.Input.asOptionalInput<String>(spec),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpc = pulumi.Input.asOptionalInput<GatewayVpc>(vpc),
      vswitch = pulumi.Input.asOptionalInput<GatewayVswitch>(vswitch),
      zoneConfig = pulumi.Input.asOptionalInput<GatewayZoneConfig>(zoneConfig),
      zones = pulumi.Input.asOptionalInput<List<GatewayZone>>(zones);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      gatewayName: map['gatewayName'] == null ? null : pulumi.Output.create<String>(map['gatewayName'] as String),
      gatewayType: map['gatewayType'] == null ? null : pulumi.Output.create<String>(map['gatewayType'] as String),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<GatewayLogConfig>(GatewayLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      networkAccessConfig: map['networkAccessConfig'] == null ? null : pulumi.Output.create<GatewayNetworkAccessConfig>(GatewayNetworkAccessConfig.fromMap((map['networkAccessConfig'] as Map).cast<String, dynamic>())),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<String>(map['spec'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpc: map['vpc'] == null ? null : pulumi.Output.create<GatewayVpc>(GatewayVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>())),
      vswitch: map['vswitch'] == null ? null : pulumi.Output.create<GatewayVswitch>(GatewayVswitch.fromMap((map['vswitch'] as Map).cast<String, dynamic>())),
      zoneConfig: map['zoneConfig'] == null ? null : pulumi.Output.create<GatewayZoneConfig>(GatewayZoneConfig.fromMap((map['zoneConfig'] as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<GatewayZone>>(pulumi.Input.decodeList<GatewayZone>(map['zones'], (value) => GatewayZone.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

