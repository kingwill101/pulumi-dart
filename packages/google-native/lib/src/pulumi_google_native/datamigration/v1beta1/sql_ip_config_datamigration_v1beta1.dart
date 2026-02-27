// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_acl_entry_datamigration_v1beta1.dart';

/// IP Management configuration.
class SqlIpConfigDatamigrationV1beta1 {
  /// The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  final List<SqlAclEntryDatamigrationV1beta1>? authorizedNetworks;

  /// Whether the instance is assigned a public IP address or not.
  final bool? enableIpv4;

  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  final String? privateNetwork;

  /// Whether SSL connections over IP should be enforced or not.
  final bool? requireSsl;

  SqlIpConfigDatamigrationV1beta1({
    this.authorizedNetworks,
    this.enableIpv4,
    this.privateNetwork,
    this.requireSsl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizedNetworksValue = authorizedNetworks;
    if (authorizedNetworksValue != null) {
      map['authorizedNetworks'] = pulumi.Input.encodeList<
              SqlAclEntryDatamigrationV1beta1, Map<String, dynamic>>(
          authorizedNetworksValue, (value) => value.toMap());
    }
    final enableIpv4Value = enableIpv4;
    if (enableIpv4Value != null) {
      map['enableIpv4'] = enableIpv4Value;
    }
    final privateNetworkValue = privateNetwork;
    if (privateNetworkValue != null) {
      map['privateNetwork'] = privateNetworkValue;
    }
    final requireSslValue = requireSsl;
    if (requireSslValue != null) {
      map['requireSsl'] = requireSslValue;
    }
    return map;
  }

  factory SqlIpConfigDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return SqlIpConfigDatamigrationV1beta1(
      authorizedNetworks: map['authorizedNetworks'] == null
          ? null
          : pulumi.Input.decodeList<SqlAclEntryDatamigrationV1beta1>(
              map['authorizedNetworks'],
              (value) => SqlAclEntryDatamigrationV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enableIpv4: map['enableIpv4'] == null ? null : map['enableIpv4'] as bool,
      privateNetwork: map['privateNetwork'] == null
          ? null
          : map['privateNetwork'] as String,
      requireSsl: map['requireSsl'] == null ? null : map['requireSsl'] as bool,
    );
  }
}
