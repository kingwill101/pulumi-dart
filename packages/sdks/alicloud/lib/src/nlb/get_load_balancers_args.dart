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
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<String>? addressType,
    pulumi.Output<String>? dnsName,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? ipv6AddressType,
    pulumi.Output<String>? loadBalancerBusinessStatus,
    pulumi.Output<List<String>>? loadBalancerNames,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? vpcIds,
    pulumi.Output<String>? zoneId,
  }) :
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipv6AddressType = pulumi.Input.asOptionalInput<String>(ipv6AddressType),
      loadBalancerBusinessStatus = pulumi.Input.asOptionalInput<String>(loadBalancerBusinessStatus),
      loadBalancerNames = pulumi.Input.asOptionalInput<List<String>>(loadBalancerNames),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcIds = pulumi.Input.asOptionalInput<List<String>>(vpcIds),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      addressType: map['addressType'] == null ? null : pulumi.Output.create<String>(map['addressType'] as String),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressType'] as String),
      loadBalancerBusinessStatus: map['loadBalancerBusinessStatus'] == null ? null : pulumi.Output.create<String>(map['loadBalancerBusinessStatus'] as String),
      loadBalancerNames: map['loadBalancerNames'] == null ? null : pulumi.Output.create<List<String>>((map['loadBalancerNames'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcIds: map['vpcIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcIds'] as List).cast<String>()),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

