// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_deletion_protection_config.dart';
import 'load_balancer_modification_protection_config.dart';
import 'load_balancer_zone_mapping.dart';

/// {@template pulumi_nlb_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_nlb_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// The protocol version. Valid values:
  ///
  /// - **ipv4:** IPv4. This is the default value.
  /// - **DualStack:** dual stack.
  final pulumi.Input<String>? addressIpVersion;
  /// The type of IPv4 address used by the NLB instance. Valid values:
  /// - `Internet`: The NLB instance uses a public IP address. The domain name of the NLB instance is resolved to the public IP address. Therefore, the NLB instance can be accessed over the Internet.
  /// - `Intranet`: The NLB instance uses a private IP address. The domain name of the NLB instance is resolved to the private IP address. Therefore, the NLB instance can be accessed over the virtual private cloud (VPC) where the NLB instance is deployed.
  ///
  /// &gt; **NOTE:**   To enable a public IPv6 address for an NLB instance, call the [EnableLoadBalancerIpv6Internet](https://www.alibabacloud.com/help/en/doc-detail/445878.html) operation.
  final pulumi.Input<String> addressType;
  /// The ID of the EIP bandwidth plan that is associated with the Internet-facing NLB instance.
  final pulumi.Input<String>? bandwidthPackageId;
  /// The speed limit of new connections per second processed by NLB instances in each VIP. Value range: `0` to `1000000`.
  ///
  /// - *0** means no speed limit.
  final pulumi.Input<int>? cps;
  /// Specifies whether to enable cross-zone load balancing for the NLB instance. Valid values:
  final pulumi.Input<bool>? crossZoneEnabled;
  /// Specifies whether to enable deletion protection. Default value: `false`. See `deletion_protection_config` below.
  final pulumi.Input<LoadBalancerDeletionProtectionConfig>? deletionProtectionConfig;
  /// Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// The reason why the deletion protection feature is enabled or disabled. The `deletion_protection_reason` takes effect only when `deletion_protection_enabled` is set to `true`.
  final pulumi.Input<String>? deletionProtectionReason;
  /// The type of IPv6 address used by the NLB instance. Valid values:
  /// - `Internet`: a public IP address. The domain name of the NLB instance is resolved to the public IP address. Therefore, the NLB instance can be accessed over the Internet.
  /// - `Intranet`: a private IP address. The domain name of the NLB instance is resolved to the private IP address. Therefore, the NLB instance can be accessed over the VPC where the NLB instance is deployed.
  final pulumi.Input<String>? ipv6AddressType;
  /// The name of the NLB instance.
  /// The value must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The value must start with a letter.
  final pulumi.Input<String>? loadBalancerName;
  /// The type of the Server Load Balancer (SLB) instance. Set the value to `network`, which specifies NLB.
  final pulumi.Input<String>? loadBalancerType;
  /// Specifies whether to enable the configuration read-only mode. Default value: `NonProtection`. See `modification_protection_config` below.
  final pulumi.Input<LoadBalancerModificationProtectionConfig>? modificationProtectionConfig;
  /// The reason why the configuration read-only mode is enabled. The `modification_protection_reason` takes effect only when `modification_protection_status` is set to `ConsoleProtection`.
  final pulumi.Input<String>? modificationProtectionReason;
  /// Specifies whether to enable the configuration read-only mode. Default value: `NonProtection`. Valid values:
  /// - `NonProtection`: Does not enable the configuration read-only mode. You cannot set the `modification_protection_reason`. If the `modification_protection_reason` is set, the value is cleared.
  /// - `ConsoleProtection`: Enables the configuration read-only mode. You can set the `modification_protection_reason`.
  final pulumi.Input<String>? modificationProtectionStatus;
  /// The payment type of the resource
  final pulumi.Input<String>? paymentType;
  /// The ID of the new resource group.
  /// You can log on to the [Resource Management console](https://resourcemanager.console.aliyun.com/resource-groups) to view resource group IDs.
  final pulumi.Input<String>? resourceGroupId;
  /// The security group to which the network-based SLB instance belongs.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// List of labels.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC where the NLB instance is deployed.
  final pulumi.Input<String> vpcId;
  /// Available Area Configuration List. You must add at least two zones. You can add a maximum of 10 zones. See `zone_mappings` below.
  final pulumi.Input<List<LoadBalancerZoneMapping>> zoneMappings;

  /// Creates a new [LoadBalancerArgs].
  /// [addressIpVersion] The protocol version. Valid values:
  /// [addressType] The type of IPv4 address used by the NLB instance. Valid values:
  /// [bandwidthPackageId] The ID of the EIP bandwidth plan that is associated with the Internet-facing NLB instance.
  /// [cps] The speed limit of new connections per second processed by NLB instances in each VIP. Value range: `0` to `1000000`.
  /// [crossZoneEnabled] Specifies whether to enable cross-zone load balancing for the NLB instance. Valid values:
  /// [deletionProtectionConfig] Specifies whether to enable deletion protection. Default value: `false`. See `deletion_protection_config` below.
  /// [deletionProtectionEnabled] Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  /// [deletionProtectionReason] The reason why the deletion protection feature is enabled or disabled. The `deletion_protection_reason` takes effect only when `deletion_protection_enabled` is set to `true`.
  /// [ipv6AddressType] The type of IPv6 address used by the NLB instance. Valid values:
  /// [loadBalancerName] The name of the NLB instance.
  /// [loadBalancerType] The type of the Server Load Balancer (SLB) instance. Set the value to `network`, which specifies NLB.
  /// [modificationProtectionConfig] Specifies whether to enable the configuration read-only mode. Default value: `NonProtection`. See `modification_protection_config` below.
  /// [modificationProtectionReason] The reason why the configuration read-only mode is enabled. The `modification_protection_reason` takes effect only when `modification_protection_status` is set to `ConsoleProtection`.
  /// [modificationProtectionStatus] Specifies whether to enable the configuration read-only mode. Default value: `NonProtection`. Valid values:
  /// [paymentType] The payment type of the resource
  /// [resourceGroupId] The ID of the new resource group.
  /// [securityGroupIds] The security group to which the network-based SLB instance belongs.
  /// [tags] List of labels.
  /// [vpcId] The ID of the VPC where the NLB instance is deployed.
  /// [zoneMappings] Available Area Configuration List. You must add at least two zones. You can add a maximum of 10 zones. See `zone_mappings` below.
  LoadBalancerArgs({
    this.addressIpVersion,
    required this.addressType,
    this.bandwidthPackageId,
    this.cps,
    this.crossZoneEnabled,
    this.deletionProtectionConfig,
    this.deletionProtectionEnabled,
    this.deletionProtectionReason,
    this.ipv6AddressType,
    this.loadBalancerName,
    this.loadBalancerType,
    this.modificationProtectionConfig,
    this.modificationProtectionReason,
    this.modificationProtectionStatus,
    this.paymentType,
    this.resourceGroupId,
    this.securityGroupIds,
    this.tags,
    required this.vpcId,
    required this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'addressType': addressType,
      'bandwidthPackageId': ?bandwidthPackageId,
      'cps': ?cps,
      'crossZoneEnabled': ?crossZoneEnabled,
      'deletionProtectionConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerDeletionProtectionConfig, Map<String, dynamic>>(deletionProtectionConfig, (value) => value.toMap()),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'deletionProtectionReason': ?deletionProtectionReason,
      'ipv6AddressType': ?ipv6AddressType,
      'loadBalancerName': ?loadBalancerName,
      'loadBalancerType': ?loadBalancerType,
      'modificationProtectionConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerModificationProtectionConfig, Map<String, dynamic>>(modificationProtectionConfig, (value) => value.toMap()),
      'modificationProtectionReason': ?modificationProtectionReason,
      'modificationProtectionStatus': ?modificationProtectionStatus,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupIds': ?securityGroupIds,
      'tags': ?tags,
      'vpcId': vpcId,
      'zoneMappings': pulumi.Input.mapInputValue<List<LoadBalancerZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<LoadBalancerZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      addressIpVersion: (() { final guardedValue = map['addressIpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressType: pulumi.Input.fromValue(map['addressType'] as String),
      bandwidthPackageId: (() { final guardedValue = map['bandwidthPackageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cps: (() { final guardedValue = map['cps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      crossZoneEnabled: (() { final guardedValue = map['crossZoneEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionProtectionConfig: (() { final guardedValue = map['deletionProtectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerDeletionProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionProtectionReason: (() { final guardedValue = map['deletionProtectionReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AddressType: (() { final guardedValue = map['ipv6AddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modificationProtectionConfig: (() { final guardedValue = map['modificationProtectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerModificationProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modificationProtectionReason: (() { final guardedValue = map['modificationProtectionReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modificationProtectionStatus: (() { final guardedValue = map['modificationProtectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      zoneMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerZoneMapping>(map['zoneMappings']!, (value) => LoadBalancerZoneMapping.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

