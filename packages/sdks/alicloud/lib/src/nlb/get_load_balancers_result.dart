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
      'balancers':
          pulumi.Input.encodeList<
            GetLoadBalancersBalancer,
            Map<String, dynamic>
          >(balancers, (value) => value.toMap()),
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
      addressIpVersion: (() {
        final guardedValue = map['addressIpVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      addressType: (() {
        final guardedValue = map['addressType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      balancers: pulumi.Input.decodeList<GetLoadBalancersBalancer>(
        map['balancers']!,
        (value) => GetLoadBalancersBalancer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      dnsName: (() {
        final guardedValue = map['dnsName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipv6AddressType: (() {
        final guardedValue = map['ipv6AddressType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      loadBalancerBusinessStatus: (() {
        final guardedValue = map['loadBalancerBusinessStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      loadBalancerNames: (() {
        final guardedValue = map['loadBalancerNames'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      vpcIds: (() {
        final guardedValue = map['vpcIds'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
