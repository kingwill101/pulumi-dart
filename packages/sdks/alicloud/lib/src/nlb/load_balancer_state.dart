// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_deletion_protection_config.dart';
import 'load_balancer_modification_protection_config.dart';
import 'load_balancer_zone_mapping.dart';

/// Input properties used for looking up and filtering LoadBalancer resources.
class LoadBalancerState {
  /// The protocol version. Valid values:
  ///
  /// - **ipv4:** IPv4. This is the default value.
  /// - **DualStack:** dual stack.
  final pulumi.Input<String>? addressIpVersion;
  /// The type of IPv4 address used by the NLB instance. Valid values:
  /// - `Internet`: The NLB instance uses a public IP address. The domain name of the NLB instance is resolved to the public IP address. Therefore, the NLB instance can be accessed over the Internet.
  /// - `Intranet`: The NLB instance uses a private IP address. The domain name of the NLB instance is resolved to the private IP address. Therefore, the NLB instance can be accessed over the virtual private cloud (VPC) where the NLB instance is deployed.
  ///
  /// > **NOTE:**   To enable a public IPv6 address for an NLB instance, call the [EnableLoadBalancerIpv6Internet](https://www.alibabacloud.com/help/en/doc-detail/445878.html) operation.
  final pulumi.Input<String>? addressType;
  /// The ID of the EIP bandwidth plan that is associated with the Internet-facing NLB instance.
  final pulumi.Input<String>? bandwidthPackageId;
  /// The speed limit of new connections per second processed by NLB instances in each VIP. Value range: `0` to `1000000`.
  ///
  /// - *0** means no speed limit.
  final pulumi.Input<int>? cps;
  /// Resource creation time, using Greenwich Mean Time, formating' yyyy-MM-ddTHH:mm:ssZ '.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to enable cross-zone load balancing for the NLB instance. Valid values:
  final pulumi.Input<bool>? crossZoneEnabled;
  /// Specifies whether to enable deletion protection. Default value: `false`. See `deletion_protection_config` below.
  final pulumi.Input<LoadBalancerDeletionProtectionConfig>? deletionProtectionConfig;
  /// Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// The reason why the deletion protection feature is enabled or disabled. The `deletion_protection_reason` takes effect only when `deletion_protection_enabled` is set to `true`.
  final pulumi.Input<String>? deletionProtectionReason;
  /// The domain name of the NLB instance.
  final pulumi.Input<String>? dnsName;
  /// The type of IPv6 address used by the NLB instance. Valid values:
  /// - `Internet`: a public IP address. The domain name of the NLB instance is resolved to the public IP address. Therefore, the NLB instance can be accessed over the Internet.
  /// - `Intranet`: a private IP address. The domain name of the NLB instance is resolved to the private IP address. Therefore, the NLB instance can be accessed over the VPC where the NLB instance is deployed.
  final pulumi.Input<String>? ipv6AddressType;
  /// The business status of the NLB instance.
  final pulumi.Input<String>? loadBalancerBusinessStatus;
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
  /// The ID of the region where the NLB instance is deployed.
  final pulumi.Input<String>? regionId;
  /// The ID of the new resource group.
  /// You can log on to the [Resource Management console](https://resourcemanager.console.aliyun.com/resource-groups) to view resource group IDs.
  final pulumi.Input<String>? resourceGroupId;
  /// The security group to which the network-based SLB instance belongs.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Zone Status
  final pulumi.Input<String>? status;
  /// List of labels.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC where the NLB instance is deployed.
  final pulumi.Input<String>? vpcId;
  /// Available Area Configuration List. You must add at least two zones. You can add a maximum of 10 zones. See `zone_mappings` below.
  final pulumi.Input<List<LoadBalancerZoneMapping>>? zoneMappings;

  /// Creates a new [LoadBalancerState].
  /// [addressIpVersion] The protocol version. Valid values:
  /// [addressType] The type of IPv4 address used by the NLB instance. Valid values:
  /// [bandwidthPackageId] The ID of the EIP bandwidth plan that is associated with the Internet-facing NLB instance.
  /// [cps] The speed limit of new connections per second processed by NLB instances in each VIP. Value range: `0` to `1000000`.
  /// [createTime] Resource creation time, using Greenwich Mean Time, formating' yyyy-MM-ddTHH:mm:ssZ '.
  /// [crossZoneEnabled] Specifies whether to enable cross-zone load balancing for the NLB instance. Valid values:
  /// [deletionProtectionConfig] Specifies whether to enable deletion protection. Default value: `false`. See `deletion_protection_config` below.
  /// [deletionProtectionEnabled] Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  /// [deletionProtectionReason] The reason why the deletion protection feature is enabled or disabled. The `deletion_protection_reason` takes effect only when `deletion_protection_enabled` is set to `true`.
  /// [dnsName] The domain name of the NLB instance.
  /// [ipv6AddressType] The type of IPv6 address used by the NLB instance. Valid values:
  /// [loadBalancerBusinessStatus] The business status of the NLB instance.
  /// [loadBalancerName] The name of the NLB instance.
  /// [loadBalancerType] The type of the Server Load Balancer (SLB) instance. Set the value to `network`, which specifies NLB.
  /// [modificationProtectionConfig] Specifies whether to enable the configuration read-only mode. Default value: `NonProtection`. See `modification_protection_config` below.
  /// [modificationProtectionReason] The reason why the configuration read-only mode is enabled. The `modification_protection_reason` takes effect only when `modification_protection_status` is set to `ConsoleProtection`.
  /// [modificationProtectionStatus] Specifies whether to enable the configuration read-only mode. Default value: `NonProtection`. Valid values:
  /// [paymentType] The payment type of the resource
  /// [regionId] The ID of the region where the NLB instance is deployed.
  /// [resourceGroupId] The ID of the new resource group.
  /// [securityGroupIds] The security group to which the network-based SLB instance belongs.
  /// [status] Zone Status
  /// [tags] List of labels.
  /// [vpcId] The ID of the VPC where the NLB instance is deployed.
  /// [zoneMappings] Available Area Configuration List. You must add at least two zones. You can add a maximum of 10 zones. See `zone_mappings` below.
  LoadBalancerState({
    this.addressIpVersion,
    this.addressType,
    this.bandwidthPackageId,
    this.cps,
    this.createTime,
    this.crossZoneEnabled,
    this.deletionProtectionConfig,
    this.deletionProtectionEnabled,
    this.deletionProtectionReason,
    this.dnsName,
    this.ipv6AddressType,
    this.loadBalancerBusinessStatus,
    this.loadBalancerName,
    this.loadBalancerType,
    this.modificationProtectionConfig,
    this.modificationProtectionReason,
    this.modificationProtectionStatus,
    this.paymentType,
    this.regionId,
    this.resourceGroupId,
    this.securityGroupIds,
    this.status,
    this.tags,
    this.vpcId,
    this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'bandwidthPackageId': ?bandwidthPackageId,
      'cps': ?cps,
      'createTime': ?createTime,
      'crossZoneEnabled': ?crossZoneEnabled,
      'deletionProtectionConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerDeletionProtectionConfig, Map<String, dynamic>>(deletionProtectionConfig, (value) => value.toMap()),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'deletionProtectionReason': ?deletionProtectionReason,
      'dnsName': ?dnsName,
      'ipv6AddressType': ?ipv6AddressType,
      'loadBalancerBusinessStatus': ?loadBalancerBusinessStatus,
      'loadBalancerName': ?loadBalancerName,
      'loadBalancerType': ?loadBalancerType,
      'modificationProtectionConfig': ?pulumi.Input.mapOptionalInputValue<LoadBalancerModificationProtectionConfig, Map<String, dynamic>>(modificationProtectionConfig, (value) => value.toMap()),
      'modificationProtectionReason': ?modificationProtectionReason,
      'modificationProtectionStatus': ?modificationProtectionStatus,
      'paymentType': ?paymentType,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupIds': ?securityGroupIds,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'zoneMappings': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<LoadBalancerZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerState(
      addressIpVersion: map['addressIpVersion'] == null ? null : (map['addressIpVersion'] as String).input(),
      addressType: map['addressType'] == null ? null : (map['addressType'] as String).input(),
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : (map['bandwidthPackageId'] as String).input(),
      cps: map['cps'] == null ? null : (map['cps'] as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      crossZoneEnabled: map['crossZoneEnabled'] == null ? null : (map['crossZoneEnabled'] as bool).input(),
      deletionProtectionConfig: map['deletionProtectionConfig'] == null ? null : (LoadBalancerDeletionProtectionConfig.fromMap((map['deletionProtectionConfig'] as Map).cast<String, dynamic>())).input(),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : (map['deletionProtectionEnabled'] as bool).input(),
      deletionProtectionReason: map['deletionProtectionReason'] == null ? null : (map['deletionProtectionReason'] as String).input(),
      dnsName: map['dnsName'] == null ? null : (map['dnsName'] as String).input(),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : (map['ipv6AddressType'] as String).input(),
      loadBalancerBusinessStatus: map['loadBalancerBusinessStatus'] == null ? null : (map['loadBalancerBusinessStatus'] as String).input(),
      loadBalancerName: map['loadBalancerName'] == null ? null : (map['loadBalancerName'] as String).input(),
      loadBalancerType: map['loadBalancerType'] == null ? null : (map['loadBalancerType'] as String).input(),
      modificationProtectionConfig: map['modificationProtectionConfig'] == null ? null : (LoadBalancerModificationProtectionConfig.fromMap((map['modificationProtectionConfig'] as Map).cast<String, dynamic>())).input(),
      modificationProtectionReason: map['modificationProtectionReason'] == null ? null : (map['modificationProtectionReason'] as String).input(),
      modificationProtectionStatus: map['modificationProtectionStatus'] == null ? null : (map['modificationProtectionStatus'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      zoneMappings: map['zoneMappings'] == null ? null : (pulumi.Input.decodeList<LoadBalancerZoneMapping>(map['zoneMappings'], (value) => LoadBalancerZoneMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

