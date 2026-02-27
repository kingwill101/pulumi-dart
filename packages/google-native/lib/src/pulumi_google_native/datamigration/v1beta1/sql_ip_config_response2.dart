// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'sql_acl_entry_response2.dart';

/// IP Management configuration.
class SqlIpConfigResponse2 {
  /// The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  final List<SqlAclEntryResponse2> authorizedNetworks;

  /// Whether the instance is assigned a public IP address or not.
  final bool enableIpv4;

  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  final String privateNetwork;

  /// Whether SSL connections over IP should be enforced or not.
  final bool requireSsl;

  SqlIpConfigResponse2({
    required this.authorizedNetworks,
    required this.enableIpv4,
    required this.privateNetwork,
    required this.requireSsl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizedNetworks'] =
        Input.encodeList<SqlAclEntryResponse2, Map<String, dynamic>>(
            authorizedNetworks, (value) => value.toMap());
    map['enableIpv4'] = enableIpv4;
    map['privateNetwork'] = privateNetwork;
    map['requireSsl'] = requireSsl;
    return map;
  }

  factory SqlIpConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SqlIpConfigResponse2(
      authorizedNetworks: Input.decodeList<SqlAclEntryResponse2>(
          map['authorizedNetworks'],
          (value) => SqlAclEntryResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      enableIpv4: map['enableIpv4'] as bool,
      privateNetwork: map['privateNetwork'] as String,
      requireSsl: map['requireSsl'] as bool,
    );
  }
}
