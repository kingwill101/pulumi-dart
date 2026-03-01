// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networking_ips_filter.dart';
import 'get_networking_ips_ip_address.dart';

/// Result data returned by getNetworkingIps.
class GetNetworkingIpsResult {
  final List<GetNetworkingIpsFilter>? filters;
  final String id;
  final List<GetNetworkingIpsIpAddress> ipAddresses;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetNetworkingIpsResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [ipAddresses] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetNetworkingIpsResult({
    this.filters,
    required this.id,
    required this.ipAddresses,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetNetworkingIpsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ipAddresses': pulumi.Input.encodeList<GetNetworkingIpsIpAddress, Map<String, dynamic>>(ipAddresses, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNetworkingIpsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkingIpsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNetworkingIpsFilter>(map['filters'], (value) => GetNetworkingIpsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipAddresses: pulumi.Input.decodeList<GetNetworkingIpsIpAddress>(map['ipAddresses'], (value) => GetNetworkingIpsIpAddress.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}

