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
    pulumi.Output<LoadBalancerAccessLogConfig>? accessLogConfig,
    pulumi.Output<String>? addressAllocatedMode,
    pulumi.Output<String>? addressIpVersion,
    required pulumi.Output<String> addressType,
    pulumi.Output<String>? bandwidthPackageId,
    pulumi.Output<LoadBalancerDeletionProtectionConfig>? deletionProtectionConfig,
    pulumi.Output<bool>? deletionProtectionEnabled,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? ipv6AddressType,
    required pulumi.Output<LoadBalancerLoadBalancerBillingConfig> loadBalancerBillingConfig,
    required pulumi.Output<String> loadBalancerEdition,
    pulumi.Output<String>? loadBalancerName,
    pulumi.Output<LoadBalancerModificationProtectionConfig>? modificationProtectionConfig,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<List<LoadBalancerZoneMapping>> zoneMappings,
  }) :
      accessLogConfig = pulumi.Input.asOptionalInput<LoadBalancerAccessLogConfig>(accessLogConfig),
      addressAllocatedMode = pulumi.Input.asOptionalInput<String>(addressAllocatedMode),
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      addressType = pulumi.Input.asInput<String>(addressType),
      bandwidthPackageId = pulumi.Input.asOptionalInput<String>(bandwidthPackageId),
      deletionProtectionConfig = pulumi.Input.asOptionalInput<LoadBalancerDeletionProtectionConfig>(deletionProtectionConfig),
      deletionProtectionEnabled = pulumi.Input.asOptionalInput<bool>(deletionProtectionEnabled),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      ipv6AddressType = pulumi.Input.asOptionalInput<String>(ipv6AddressType),
      loadBalancerBillingConfig = pulumi.Input.asInput<LoadBalancerLoadBalancerBillingConfig>(loadBalancerBillingConfig),
      loadBalancerEdition = pulumi.Input.asInput<String>(loadBalancerEdition),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      modificationProtectionConfig = pulumi.Input.asOptionalInput<LoadBalancerModificationProtectionConfig>(modificationProtectionConfig),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      zoneMappings = pulumi.Input.asInput<List<LoadBalancerZoneMapping>>(zoneMappings);

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
      accessLogConfig: map['accessLogConfig'] == null ? null : pulumi.Output.create<LoadBalancerAccessLogConfig>(LoadBalancerAccessLogConfig.fromMap((map['accessLogConfig'] as Map).cast<String, dynamic>())),
      addressAllocatedMode: map['addressAllocatedMode'] == null ? null : pulumi.Output.create<String>(map['addressAllocatedMode'] as String),
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      addressType: pulumi.Output.create<String>(map['addressType'] as String),
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : pulumi.Output.create<String>(map['bandwidthPackageId'] as String),
      deletionProtectionConfig: map['deletionProtectionConfig'] == null ? null : pulumi.Output.create<LoadBalancerDeletionProtectionConfig>(LoadBalancerDeletionProtectionConfig.fromMap((map['deletionProtectionConfig'] as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['deletionProtectionEnabled'] as bool),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressType'] as String),
      loadBalancerBillingConfig: pulumi.Output.create<LoadBalancerLoadBalancerBillingConfig>(LoadBalancerLoadBalancerBillingConfig.fromMap((map['loadBalancerBillingConfig'] as Map).cast<String, dynamic>())),
      loadBalancerEdition: pulumi.Output.create<String>(map['loadBalancerEdition'] as String),
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      modificationProtectionConfig: map['modificationProtectionConfig'] == null ? null : pulumi.Output.create<LoadBalancerModificationProtectionConfig>(LoadBalancerModificationProtectionConfig.fromMap((map['modificationProtectionConfig'] as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      zoneMappings: pulumi.Output.create<List<LoadBalancerZoneMapping>>(pulumi.Input.decodeList<LoadBalancerZoneMapping>(map['zoneMappings'], (value) => LoadBalancerZoneMapping.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

