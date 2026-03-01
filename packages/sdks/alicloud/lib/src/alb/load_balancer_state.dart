// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_access_log_config.dart';
import 'load_balancer_deletion_protection_config.dart';
import 'load_balancer_load_balancer_billing_config.dart';
import 'load_balancer_modification_protection_config.dart';
import 'load_balancer_zone_mapping.dart';

/// Input properties used for looking up and filtering LoadBalancer resources.
class LoadBalancerState {
  /// The configuration of the access log. See `access_log_config` below.
  final pulumi.Input<LoadBalancerAccessLogConfig>? accessLogConfig;
  /// The method in which IP addresses are assigned. Valid values:  Fixed: The ALB instance uses a fixed IP address. Dynamic (default): An IP address is dynamically assigned to each zone of the ALB instance.
  final pulumi.Input<String>? addressAllocatedMode;
  /// The protocol version. Value:
  /// - `IPv4`:IPv4 type.
  /// - `DualStack`: the dual-stack type.
  final pulumi.Input<String>? addressIpVersion;
  /// The type of IP address that the SLB instance uses to provide services.
  final pulumi.Input<String>? addressType;
  /// The ID of the EIP bandwidth plan which is associated with an ALB instance that uses a public IP address.
  final pulumi.Input<String>? bandwidthPackageId;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The Protection Configuration See `deletion_protection_config` below.
  final pulumi.Input<LoadBalancerDeletionProtectionConfig>? deletionProtectionConfig;
  /// Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// DNS Domain Name
  final pulumi.Input<String>? dnsName;
  /// Whether to PreCheck only this request, value:
  final pulumi.Input<bool>? dryRun;
  /// The address type of Ipv6
  final pulumi.Input<String>? ipv6AddressType;
  /// The configuration of the billing method. See `load_balancer_billing_config` below.
  final pulumi.Input<LoadBalancerLoadBalancerBillingConfig>? loadBalancerBillingConfig;
  /// The edition of the ALB instance.
  final pulumi.Input<String>? loadBalancerEdition;
  /// The name of the resource
  final pulumi.Input<String>? loadBalancerName;
  /// Modify the Protection Configuration See `modification_protection_config` below.
  final pulumi.Input<LoadBalancerModificationProtectionConfig>? modificationProtectionConfig;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Server Load Balancer Instance Status:, indicating that the instance listener will no longer forward traffic.(default).
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) where the SLB instance is deployed.
  final pulumi.Input<String>? vpcId;
  /// The zones and vSwitches. You must specify at least two zones. See `zone_mappings` below.
  final pulumi.Input<List<LoadBalancerZoneMapping>>? zoneMappings;

  /// Creates a new [LoadBalancerState].
  /// [accessLogConfig] The configuration of the access log. See `access_log_config` below.
  /// [addressAllocatedMode] The method in which IP addresses are assigned. Valid values:  Fixed: The ALB instance uses a fixed IP address. Dynamic (default): An IP address is dynamically assigned to each zone of the ALB instance.
  /// [addressIpVersion] The protocol version. Value:
  /// [addressType] The type of IP address that the SLB instance uses to provide services.
  /// [bandwidthPackageId] The ID of the EIP bandwidth plan which is associated with an ALB instance that uses a public IP address.
  /// [createTime] The creation time of the resource
  /// [deletionProtectionConfig] The Protection Configuration See `deletion_protection_config` below.
  /// [deletionProtectionEnabled] Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  /// [dnsName] DNS Domain Name
  /// [dryRun] Whether to PreCheck only this request, value:
  /// [ipv6AddressType] The address type of Ipv6
  /// [loadBalancerBillingConfig] The configuration of the billing method. See `load_balancer_billing_config` below.
  /// [loadBalancerEdition] The edition of the ALB instance.
  /// [loadBalancerName] The name of the resource
  /// [modificationProtectionConfig] Modify the Protection Configuration See `modification_protection_config` below.
  /// [regionId] The region ID of the resource
  /// [resourceGroupId] The ID of the resource group
  /// [status] Server Load Balancer Instance Status:, indicating that the instance listener will no longer forward traffic.(default).
  /// [tags] The tag of the resource
  /// [vpcId] The ID of the virtual private cloud (VPC) where the SLB instance is deployed.
  /// [zoneMappings] The zones and vSwitches. You must specify at least two zones. See `zone_mappings` below.
  LoadBalancerState({
    pulumi.Output<LoadBalancerAccessLogConfig>? accessLogConfig,
    pulumi.Output<String>? addressAllocatedMode,
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<String>? addressType,
    pulumi.Output<String>? bandwidthPackageId,
    pulumi.Output<String>? createTime,
    pulumi.Output<LoadBalancerDeletionProtectionConfig>? deletionProtectionConfig,
    pulumi.Output<bool>? deletionProtectionEnabled,
    pulumi.Output<String>? dnsName,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? ipv6AddressType,
    pulumi.Output<LoadBalancerLoadBalancerBillingConfig>? loadBalancerBillingConfig,
    pulumi.Output<String>? loadBalancerEdition,
    pulumi.Output<String>? loadBalancerName,
    pulumi.Output<LoadBalancerModificationProtectionConfig>? modificationProtectionConfig,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<List<LoadBalancerZoneMapping>>? zoneMappings,
  }) :
      accessLogConfig = pulumi.Input.asOptionalInput<LoadBalancerAccessLogConfig>(accessLogConfig),
      addressAllocatedMode = pulumi.Input.asOptionalInput<String>(addressAllocatedMode),
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      bandwidthPackageId = pulumi.Input.asOptionalInput<String>(bandwidthPackageId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtectionConfig = pulumi.Input.asOptionalInput<LoadBalancerDeletionProtectionConfig>(deletionProtectionConfig),
      deletionProtectionEnabled = pulumi.Input.asOptionalInput<bool>(deletionProtectionEnabled),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      ipv6AddressType = pulumi.Input.asOptionalInput<String>(ipv6AddressType),
      loadBalancerBillingConfig = pulumi.Input.asOptionalInput<LoadBalancerLoadBalancerBillingConfig>(loadBalancerBillingConfig),
      loadBalancerEdition = pulumi.Input.asOptionalInput<String>(loadBalancerEdition),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      modificationProtectionConfig = pulumi.Input.asOptionalInput<LoadBalancerModificationProtectionConfig>(modificationProtectionConfig),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      zoneMappings = pulumi.Input.asOptionalInput<List<LoadBalancerZoneMapping>>(zoneMappings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerAccessLogConfig, Map<String, dynamic>>(accessLogConfig, (value) => value.toMap()),
      'addressAllocatedMode': ?addressAllocatedMode,
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'bandwidthPackageId': ?bandwidthPackageId,
      'createTime': ?createTime,
      'deletionProtectionConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerDeletionProtectionConfig, Map<String, dynamic>>(deletionProtectionConfig, (value) => value.toMap()),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'dnsName': ?dnsName,
      'dryRun': ?dryRun,
      'ipv6AddressType': ?ipv6AddressType,
      'loadBalancerBillingConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerLoadBalancerBillingConfig, Map<String, dynamic>>(loadBalancerBillingConfig, (value) => value.toMap()),
      'loadBalancerEdition': ?loadBalancerEdition,
      'loadBalancerName': ?loadBalancerName,
      'modificationProtectionConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerModificationProtectionConfig, Map<String, dynamic>>(modificationProtectionConfig, (value) => value.toMap()),
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'zoneMappings': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<LoadBalancerZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerState(
      accessLogConfig: map['accessLogConfig'] == null ? null : pulumi.Output.create<LoadBalancerAccessLogConfig>(LoadBalancerAccessLogConfig.fromMap((map['accessLogConfig'] as Map).cast<String, dynamic>())),
      addressAllocatedMode: map['addressAllocatedMode'] == null ? null : pulumi.Output.create<String>(map['addressAllocatedMode'] as String),
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      addressType: map['addressType'] == null ? null : pulumi.Output.create<String>(map['addressType'] as String),
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : pulumi.Output.create<String>(map['bandwidthPackageId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtectionConfig: map['deletionProtectionConfig'] == null ? null : pulumi.Output.create<LoadBalancerDeletionProtectionConfig>(LoadBalancerDeletionProtectionConfig.fromMap((map['deletionProtectionConfig'] as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['deletionProtectionEnabled'] as bool),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressType'] as String),
      loadBalancerBillingConfig: map['loadBalancerBillingConfig'] == null ? null : pulumi.Output.create<LoadBalancerLoadBalancerBillingConfig>(LoadBalancerLoadBalancerBillingConfig.fromMap((map['loadBalancerBillingConfig'] as Map).cast<String, dynamic>())),
      loadBalancerEdition: map['loadBalancerEdition'] == null ? null : pulumi.Output.create<String>(map['loadBalancerEdition'] as String),
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      modificationProtectionConfig: map['modificationProtectionConfig'] == null ? null : pulumi.Output.create<LoadBalancerModificationProtectionConfig>(LoadBalancerModificationProtectionConfig.fromMap((map['modificationProtectionConfig'] as Map).cast<String, dynamic>())),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      zoneMappings: map['zoneMappings'] == null ? null : pulumi.Output.create<List<LoadBalancerZoneMapping>>(pulumi.Input.decodeList<LoadBalancerZoneMapping>(map['zoneMappings'], (value) => LoadBalancerZoneMapping.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

