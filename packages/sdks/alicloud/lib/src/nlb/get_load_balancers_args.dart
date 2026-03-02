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
  GetLoadBalancersArgs({
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
      addressIpVersion: map['addressIpVersion'] == null ? null : (map['addressIpVersion'] as String).input(),
      addressType: map['addressType'] == null ? null : (map['addressType'] as String).input(),
      dnsName: map['dnsName'] == null ? null : (map['dnsName'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : (map['ipv6AddressType'] as String).input(),
      loadBalancerBusinessStatus: map['loadBalancerBusinessStatus'] == null ? null : (map['loadBalancerBusinessStatus'] as String).input(),
      loadBalancerNames: map['loadBalancerNames'] == null ? null : ((map['loadBalancerNames'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcIds: map['vpcIds'] == null ? null : ((map['vpcIds'] as List).cast<String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

