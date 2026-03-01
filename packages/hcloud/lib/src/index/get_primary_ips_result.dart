// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_primary_ips_primary_ip.dart';

/// Result data returned by getPrimaryIps.
class GetPrimaryIpsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (list) List of all matching primary ips. See `data.hcloud_primary_ip` for schema.
  final List<GetPrimaryIpsPrimaryIp> primaryIps;
  final String? withSelector;

  /// Creates a new [GetPrimaryIpsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [primaryIps] (list) List of all matching primary ips. See `data.hcloud_primary_ip` for schema.
  /// [withSelector] Optional.
  GetPrimaryIpsResult({
    required this.id,
    required this.primaryIps,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'primaryIps': pulumi.Input.encodeList<GetPrimaryIpsPrimaryIp, Map<String, dynamic>>(primaryIps, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetPrimaryIpsResult.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpsResult(
      id: map['id'] as String,
      primaryIps: pulumi.Input.decodeList<GetPrimaryIpsPrimaryIp>(map['primaryIps'], (value) => GetPrimaryIpsPrimaryIp.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

