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
  final pulumi.Input<LoadBalancerDeletionProtectionConfig>?
  deletionProtectionConfig;

  /// Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  final pulumi.Input<bool>? deletionProtectionEnabled;

  /// DNS Domain Name
  final pulumi.Input<String>? dnsName;

  /// Whether to PreCheck only this request, value:
  final pulumi.Input<bool>? dryRun;

  /// The address type of Ipv6
  final pulumi.Input<String>? ipv6AddressType;

  /// The configuration of the billing method. See `load_balancer_billing_config` below.
  final pulumi.Input<LoadBalancerLoadBalancerBillingConfig>?
  loadBalancerBillingConfig;

  /// The edition of the ALB instance.
  final pulumi.Input<String>? loadBalancerEdition;

  /// The name of the resource
  final pulumi.Input<String>? loadBalancerName;

  /// Modify the Protection Configuration See `modification_protection_config` below.
  final pulumi.Input<LoadBalancerModificationProtectionConfig>?
  modificationProtectionConfig;

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
    this.accessLogConfig,
    this.addressAllocatedMode,
    this.addressIpVersion,
    this.addressType,
    this.bandwidthPackageId,
    this.createTime,
    this.deletionProtectionConfig,
    this.deletionProtectionEnabled,
    this.dnsName,
    this.dryRun,
    this.ipv6AddressType,
    this.loadBalancerBillingConfig,
    this.loadBalancerEdition,
    this.loadBalancerName,
    this.modificationProtectionConfig,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
    this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerAccessLogConfig,
            Map<String, dynamic>
          >(accessLogConfig, (value) => value.toMap()),
      'addressAllocatedMode': ?addressAllocatedMode,
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'bandwidthPackageId': ?bandwidthPackageId,
      'createTime': ?createTime,
      'deletionProtectionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerDeletionProtectionConfig,
            Map<String, dynamic>
          >(deletionProtectionConfig, (value) => value.toMap()),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'dnsName': ?dnsName,
      'dryRun': ?dryRun,
      'ipv6AddressType': ?ipv6AddressType,
      'loadBalancerBillingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerLoadBalancerBillingConfig,
            Map<String, dynamic>
          >(loadBalancerBillingConfig, (value) => value.toMap()),
      'loadBalancerEdition': ?loadBalancerEdition,
      'loadBalancerName': ?loadBalancerName,
      'modificationProtectionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerModificationProtectionConfig,
            Map<String, dynamic>
          >(modificationProtectionConfig, (value) => value.toMap()),
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'zoneMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<LoadBalancerZoneMapping>,
            List<Map<String, dynamic>>
          >(
            zoneMappings,
            (value) =>
                pulumi.Input.encodeList<
                  LoadBalancerZoneMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory LoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerState(
      accessLogConfig: (() {
        final guardedValue = map['accessLogConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerAccessLogConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      addressAllocatedMode: (() {
        final guardedValue = map['addressAllocatedMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressIpVersion: (() {
        final guardedValue = map['addressIpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressType: (() {
        final guardedValue = map['addressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bandwidthPackageId: (() {
        final guardedValue = map['bandwidthPackageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtectionConfig: (() {
        final guardedValue = map['deletionProtectionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerDeletionProtectionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deletionProtectionEnabled: (() {
        final guardedValue = map['deletionProtectionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dnsName: (() {
        final guardedValue = map['dnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipv6AddressType: (() {
        final guardedValue = map['ipv6AddressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerBillingConfig: (() {
        final guardedValue = map['loadBalancerBillingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerLoadBalancerBillingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      loadBalancerEdition: (() {
        final guardedValue = map['loadBalancerEdition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerName: (() {
        final guardedValue = map['loadBalancerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modificationProtectionConfig: (() {
        final guardedValue = map['modificationProtectionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerModificationProtectionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneMappings: (() {
        final guardedValue = map['zoneMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LoadBalancerZoneMapping>(
            guardedValue,
            (value) => LoadBalancerZoneMapping.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
