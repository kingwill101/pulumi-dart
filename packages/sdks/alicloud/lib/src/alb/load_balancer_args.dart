// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_access_log_config.dart';
import 'load_balancer_deletion_protection_config.dart';
import 'load_balancer_load_balancer_billing_config.dart';
import 'load_balancer_modification_protection_config.dart';
import 'load_balancer_zone_mapping.dart';

/// {@template pulumi_alb_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_alb_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// The configuration of the access log. See `access_log_config` below.
  final pulumi.Input<LoadBalancerAccessLogConfig>? accessLogConfig;
  /// The method in which IP addresses are assigned. Valid values:  Fixed: The ALB instance uses a fixed IP address. Dynamic (default): An IP address is dynamically assigned to each zone of the ALB instance.
  final pulumi.Input<String>? addressAllocatedMode;
  /// The protocol version. Value:
  /// - `IPv4`:IPv4 type.
  /// - `DualStack`: the dual-stack type.
  final pulumi.Input<String>? addressIpVersion;
  /// The type of IP address that the SLB instance uses to provide services.
  final pulumi.Input<String> addressType;
  /// The ID of the EIP bandwidth plan which is associated with an ALB instance that uses a public IP address.
  final pulumi.Input<String>? bandwidthPackageId;
  /// The Protection Configuration See `deletion_protection_config` below.
  final pulumi.Input<LoadBalancerDeletionProtectionConfig>? deletionProtectionConfig;
  /// Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Whether to PreCheck only this request, value:
  final pulumi.Input<bool>? dryRun;
  /// The address type of Ipv6
  final pulumi.Input<String>? ipv6AddressType;
  /// The configuration of the billing method. See `load_balancer_billing_config` below.
  final pulumi.Input<LoadBalancerLoadBalancerBillingConfig> loadBalancerBillingConfig;
  /// The edition of the ALB instance.
  final pulumi.Input<String> loadBalancerEdition;
  /// The name of the resource
  final pulumi.Input<String>? loadBalancerName;
  /// Modify the Protection Configuration See `modification_protection_config` below.
  final pulumi.Input<LoadBalancerModificationProtectionConfig>? modificationProtectionConfig;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) where the SLB instance is deployed.
  final pulumi.Input<String> vpcId;
  /// The zones and vSwitches. You must specify at least two zones. See `zone_mappings` below.
  final pulumi.Input<List<LoadBalancerZoneMapping>> zoneMappings;

  /// Creates a new [LoadBalancerArgs].
  /// [accessLogConfig] The configuration of the access log. See `access_log_config` below.
  /// [addressAllocatedMode] The method in which IP addresses are assigned. Valid values:  Fixed: The ALB instance uses a fixed IP address. Dynamic (default): An IP address is dynamically assigned to each zone of the ALB instance.
  /// [addressIpVersion] The protocol version. Value:
  /// [addressType] The type of IP address that the SLB instance uses to provide services.
  /// [bandwidthPackageId] The ID of the EIP bandwidth plan which is associated with an ALB instance that uses a public IP address.
  /// [deletionProtectionConfig] The Protection Configuration See `deletion_protection_config` below.
  /// [deletionProtectionEnabled] Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  /// [dryRun] Whether to PreCheck only this request, value:
  /// [ipv6AddressType] The address type of Ipv6
  /// [loadBalancerBillingConfig] The configuration of the billing method. See `load_balancer_billing_config` below.
  /// [loadBalancerEdition] The edition of the ALB instance.
  /// [loadBalancerName] The name of the resource
  /// [modificationProtectionConfig] Modify the Protection Configuration See `modification_protection_config` below.
  /// [resourceGroupId] The ID of the resource group
  /// [tags] The tag of the resource
  /// [vpcId] The ID of the virtual private cloud (VPC) where the SLB instance is deployed.
  /// [zoneMappings] The zones and vSwitches. You must specify at least two zones. See `zone_mappings` below.
  LoadBalancerArgs({
    this.accessLogConfig,
    this.addressAllocatedMode,
    this.addressIpVersion,
    required this.addressType,
    this.bandwidthPackageId,
    this.deletionProtectionConfig,
    this.deletionProtectionEnabled,
    this.dryRun,
    this.ipv6AddressType,
    required this.loadBalancerBillingConfig,
    required this.loadBalancerEdition,
    this.loadBalancerName,
    this.modificationProtectionConfig,
    this.resourceGroupId,
    this.tags,
    required this.vpcId,
    required this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerAccessLogConfig, Map<String, dynamic>>(accessLogConfig, (value) => value.toMap()),
      'addressAllocatedMode': ?addressAllocatedMode,
      'addressIpVersion': ?addressIpVersion,
      'addressType': addressType,
      'bandwidthPackageId': ?bandwidthPackageId,
      'deletionProtectionConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerDeletionProtectionConfig, Map<String, dynamic>>(deletionProtectionConfig, (value) => value.toMap()),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'dryRun': ?dryRun,
      'ipv6AddressType': ?ipv6AddressType,
      'loadBalancerBillingConfig': pulumi.Input.mapInputValue<LoadBalancerLoadBalancerBillingConfig, Map<String, dynamic>>(loadBalancerBillingConfig, (value) => value.toMap()),
      'loadBalancerEdition': loadBalancerEdition,
      'loadBalancerName': ?loadBalancerName,
      'modificationProtectionConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerModificationProtectionConfig, Map<String, dynamic>>(modificationProtectionConfig, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vpcId': vpcId,
      'zoneMappings': pulumi.Input.mapInputValue<List<LoadBalancerZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<LoadBalancerZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      accessLogConfig: map['accessLogConfig'] == null ? null : (LoadBalancerAccessLogConfig.fromMap((map['accessLogConfig'] as Map).cast<String, dynamic>())).input(),
      addressAllocatedMode: map['addressAllocatedMode'] == null ? null : (map['addressAllocatedMode'] as String).input(),
      addressIpVersion: map['addressIpVersion'] == null ? null : (map['addressIpVersion'] as String).input(),
      addressType: (map['addressType'] as String).input(),
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : (map['bandwidthPackageId'] as String).input(),
      deletionProtectionConfig: map['deletionProtectionConfig'] == null ? null : (LoadBalancerDeletionProtectionConfig.fromMap((map['deletionProtectionConfig'] as Map).cast<String, dynamic>())).input(),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : (map['deletionProtectionEnabled'] as bool).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : (map['ipv6AddressType'] as String).input(),
      loadBalancerBillingConfig: (LoadBalancerLoadBalancerBillingConfig.fromMap((map['loadBalancerBillingConfig'] as Map).cast<String, dynamic>())).input(),
      loadBalancerEdition: (map['loadBalancerEdition'] as String).input(),
      loadBalancerName: map['loadBalancerName'] == null ? null : (map['loadBalancerName'] as String).input(),
      modificationProtectionConfig: map['modificationProtectionConfig'] == null ? null : (LoadBalancerModificationProtectionConfig.fromMap((map['modificationProtectionConfig'] as Map).cast<String, dynamic>())).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      zoneMappings: (pulumi.Input.decodeList<LoadBalancerZoneMapping>(map['zoneMappings'], (value) => LoadBalancerZoneMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

