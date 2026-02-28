// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_acl_entry_response_datamigration_v1beta1.dart';

/// IP Management configuration.
class SqlIpConfigResponseDatamigrationV1beta1 {
  /// The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  final List<SqlAclEntryResponseDatamigrationV1beta1> authorizedNetworks;
  /// Whether the instance is assigned a public IP address or not.
  final bool enableIpv4;
  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  final String privateNetwork;
  /// Whether SSL connections over IP should be enforced or not.
  final bool requireSsl;

  /// Creates a new [SqlIpConfigResponseDatamigrationV1beta1].
  /// [authorizedNetworks] The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  /// [enableIpv4] Whether the instance is assigned a public IP address or not.
  /// [privateNetwork] The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  /// [requireSsl] Whether SSL connections over IP should be enforced or not.
  SqlIpConfigResponseDatamigrationV1beta1({
    required this.authorizedNetworks,
    required this.enableIpv4,
    required this.privateNetwork,
    required this.requireSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetworks': pulumi.Input.encodeList<SqlAclEntryResponseDatamigrationV1beta1, Map<String, dynamic>>(authorizedNetworks, (value) => value.toMap()),
      'enableIpv4': enableIpv4,
      'privateNetwork': privateNetwork,
      'requireSsl': requireSsl,
    };
  }

  factory SqlIpConfigResponseDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return SqlIpConfigResponseDatamigrationV1beta1(
      authorizedNetworks: pulumi.Input.decodeList<SqlAclEntryResponseDatamigrationV1beta1>(map['authorizedNetworks'], (value) => SqlAclEntryResponseDatamigrationV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      enableIpv4: map['enableIpv4'] as bool,
      privateNetwork: map['privateNetwork'] as String,
      requireSsl: map['requireSsl'] as bool,
    );
  }
}

