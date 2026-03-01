// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_zone_mapping.dart';

/// {@template pulumi_gwlb_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_gwlb_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// The IP version. Valid values:
  ///
  /// - `Ipv4`: IPv4 (default)
  final pulumi.Input<String>? addressIpVersion;
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The GWLB instance name.
  ///
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? loadBalancerName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag keys. You can specify at most 20 tags in each call.
  final pulumi.Input<Map<String, String>>? tags;
  /// The virtual private cloud (VPC) ID.
  final pulumi.Input<String> vpcId;
  /// The mappings between zones and vSwitches. You must specify at least one zone. You can specify at most 20 zones. If the region supports two or more zones, we recommend that you select two or more zones. See `zone_mappings` below.
  final pulumi.Input<List<LoadBalancerZoneMapping>> zoneMappings;

  /// Creates a new [LoadBalancerArgs].
  /// [addressIpVersion] The IP version. Valid values:
  /// [dryRun] Specifies whether to perform a dry run, without performing the actual request. Valid values:
  /// [loadBalancerName] The GWLB instance name.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag keys. You can specify at most 20 tags in each call.
  /// [vpcId] The virtual private cloud (VPC) ID.
  /// [zoneMappings] The mappings between zones and vSwitches. You must specify at least one zone. You can specify at most 20 zones. If the region supports two or more zones, we recommend that you select two or more zones. See `zone_mappings` below.
  LoadBalancerArgs({
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? loadBalancerName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<List<LoadBalancerZoneMapping>> zoneMappings,
  }) :
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      zoneMappings = pulumi.Input.asInput<List<LoadBalancerZoneMapping>>(zoneMappings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'dryRun': ?dryRun,
      'loadBalancerName': ?loadBalancerName,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vpcId': vpcId,
      'zoneMappings': pulumi.Input.mapInputValue<List<LoadBalancerZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<LoadBalancerZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      zoneMappings: pulumi.Output.create<List<LoadBalancerZoneMapping>>(pulumi.Input.decodeList<LoadBalancerZoneMapping>(map['zoneMappings'], (value) => LoadBalancerZoneMapping.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

