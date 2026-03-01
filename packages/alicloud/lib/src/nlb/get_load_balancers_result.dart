// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_balancer.dart';

/// Result data returned by getLoadBalancers.
class GetLoadBalancersResult {
  final String? addressIpVersion;
  final String? addressType;
  final List<GetLoadBalancersBalancer> balancers;
  final String? dnsName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? ipv6AddressType;
  final String? loadBalancerBusinessStatus;
  final List<String>? loadBalancerNames;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? resourceGroupId;
  final String? status;
  final Map<String, String>? tags;
  final List<String>? vpcIds;
  final String? zoneId;

  /// Creates a new [GetLoadBalancersResult].
  /// [addressIpVersion] Optional.
  /// [addressType] Optional.
  /// [balancers] Required.
  /// [dnsName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ipv6AddressType] Optional.
  /// [loadBalancerBusinessStatus] Optional.
  /// [loadBalancerNames] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [vpcIds] Optional.
  /// [zoneId] Optional.
  GetLoadBalancersResult({
    this.addressIpVersion,
    this.addressType,
    required this.balancers,
    this.dnsName,
    required this.id,
    required this.ids,
    this.ipv6AddressType,
    this.loadBalancerBusinessStatus,
    this.loadBalancerNames,
    this.nameRegex,
    required this.names,
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
      'balancers': pulumi.Input.encodeList<GetLoadBalancersBalancer, Map<String, dynamic>>(balancers, (value) => value.toMap()),
      'dnsName': ?dnsName,
      'id': id,
      'ids': ids,
      'ipv6AddressType': ?ipv6AddressType,
      'loadBalancerBusinessStatus': ?loadBalancerBusinessStatus,
      'loadBalancerNames': ?loadBalancerNames,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcIds': ?vpcIds,
      'zoneId': ?zoneId,
    };
  }

  factory GetLoadBalancersResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResult(
      addressIpVersion: map['addressIpVersion'] == null ? null : map['addressIpVersion'] as String,
      addressType: map['addressType'] == null ? null : map['addressType'] as String,
      balancers: pulumi.Input.decodeList<GetLoadBalancersBalancer>(map['balancers'], (value) => GetLoadBalancersBalancer.fromMap((value as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipv6AddressType: map['ipv6AddressType'] == null ? null : map['ipv6AddressType'] as String,
      loadBalancerBusinessStatus: map['loadBalancerBusinessStatus'] == null ? null : map['loadBalancerBusinessStatus'] as String,
      loadBalancerNames: map['loadBalancerNames'] == null ? null : (map['loadBalancerNames'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcIds: map['vpcIds'] == null ? null : (map['vpcIds'] as List).cast<String>(),
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

