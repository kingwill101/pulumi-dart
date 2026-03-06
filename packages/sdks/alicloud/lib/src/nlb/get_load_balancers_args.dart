// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_get_load_balancers_get_load_balancers_args_doc}
/// Arguments for getLoadBalancers.
/// {@endtemplate}
/// {@macro pulumi_nlb_get_load_balancers_get_load_balancers_args_doc}
class GetLoadBalancersArgs {
  /// The IP version. Valid values: `ipv4`, `DualStack`.
  final pulumi.Input<String>? addressIpVersion;
  /// The type of IPv4 address used by the NLB instance. Valid values: `Internet`, `Intranet`.
  final pulumi.Input<String>? addressType;
  /// The domain name of the NLB instance.
  final pulumi.Input<String>? dnsName;
  /// A list of Load Balancer IDs.
  final pulumi.Input<List<String>>? ids;
  /// The type of IPv6 address used by the NLB instance. Valid values: `Internet`, `Intranet`.
  final pulumi.Input<String>? ipv6AddressType;
  /// The business status of the NLB instance. Valid values: `Abnormal`, `Normal`.
  final pulumi.Input<String>? loadBalancerBusinessStatus;
  /// The name of the NLB instance. You can specify at most 10 names.
  final pulumi.Input<List<String>>? loadBalancerNames;
  /// A regex string to filter results by Load Balancer name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the NLB instance. Valid values: `Inactive`, `Active`, `Provisioning`, `Configuring`, `Deleting`, `Deleted`.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) where the NLB instance is deployed. You can specify at most 10 IDs.
  final pulumi.Input<List<String>>? vpcIds;
  /// The name of the zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetLoadBalancersArgs].
  /// [addressIpVersion] The IP version. Valid values: `ipv4`, `DualStack`.
  /// [addressType] The type of IPv4 address used by the NLB instance. Valid values: `Internet`, `Intranet`.
  /// [dnsName] The domain name of the NLB instance.
  /// [ids] A list of Load Balancer IDs.
  /// [ipv6AddressType] The type of IPv6 address used by the NLB instance. Valid values: `Internet`, `Intranet`.
  /// [loadBalancerBusinessStatus] The business status of the NLB instance. Valid values: `Abnormal`, `Normal`.
  /// [loadBalancerNames] The name of the NLB instance. You can specify at most 10 names.
  /// [nameRegex] A regex string to filter results by Load Balancer name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the NLB instance. Valid values: `Inactive`, `Active`, `Provisioning`, `Configuring`, `Deleting`, `Deleted`.
  /// [tags] Optional.
  /// [vpcIds] The ID of the virtual private cloud (VPC) where the NLB instance is deployed. You can specify at most 10 IDs.
  /// [zoneId] The name of the zone.
  const GetLoadBalancersArgs({
    this.addressIpVersion,
    this.addressType,
    this.dnsName,
    this.ids,
    this.ipv6AddressType,
    this.loadBalancerBusinessStatus,
    this.loadBalancerNames,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcIds,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'dnsName': ?dnsName,
      'ids': ?ids,
      'ipv6AddressType': ?ipv6AddressType,
      'loadBalancerBusinessStatus': ?loadBalancerBusinessStatus,
      'loadBalancerNames': ?loadBalancerNames,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcIds': ?vpcIds,
      'zoneId': ?zoneId,
    };
  }

  factory GetLoadBalancersArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersArgs(
      addressIpVersion: (() { final guardedValue = map['addressIpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressType: (() { final guardedValue = map['addressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6AddressType: (() { final guardedValue = map['ipv6AddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerBusinessStatus: (() { final guardedValue = map['loadBalancerBusinessStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerNames: (() { final guardedValue = map['loadBalancerNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

