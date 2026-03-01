// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_acl_entry.dart';

/// IP Management configuration.
class SqlIpConfig {
  /// Optional. The name of the allocated IP address range for the private IP Cloud SQL instance. This name refers to an already allocated IP range address. If set, the instance IP address will be created in the allocated range. Note that this IP address range can't be modified after the instance is created. If you change the VPC when configuring connectivity settings for the migration job, this field is not relevant.
  final String? allocatedIpRange;

  /// The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  final List<SqlAclEntry>? authorizedNetworks;

  /// Whether the instance should be assigned an IPv4 address or not.
  final bool? enableIpv4;

  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  final String? privateNetwork;

  /// Whether SSL connections over IP should be enforced or not.
  final bool? requireSsl;

  /// Creates a new [SqlIpConfig].
  /// [allocatedIpRange] Optional. The name of the allocated IP address range for the private IP Cloud SQL instance. This name refers to an already allocated IP range address. If set, the instance IP address will be created in the allocated range. Note that this IP address range can't be modified after the instance is created. If you change the VPC when configuring connectivity settings for the migration job, this field is not relevant.
  /// [authorizedNetworks] The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  /// [enableIpv4] Whether the instance should be assigned an IPv4 address or not.
  /// [privateNetwork] The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  /// [requireSsl] Whether SSL connections over IP should be enforced or not.
  SqlIpConfig({
    this.allocatedIpRange,
    this.authorizedNetworks,
    this.enableIpv4,
    this.privateNetwork,
    this.requireSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': ?allocatedIpRange,
      'authorizedNetworks': ?authorizedNetworks == null
          ? null
          : pulumi.Input.encodeList<SqlAclEntry, Map<String, dynamic>>(
              authorizedNetworks!,
              (value) => value.toMap(),
            ),
      'enableIpv4': ?enableIpv4,
      'privateNetwork': ?privateNetwork,
      'requireSsl': ?requireSsl,
    };
  }

  factory SqlIpConfig.fromMap(Map<String, dynamic> map) {
    return SqlIpConfig(
      allocatedIpRange: map['allocatedIpRange'] == null
          ? null
          : map['allocatedIpRange'] as String,
      authorizedNetworks: map['authorizedNetworks'] == null
          ? null
          : pulumi.Input.decodeList<SqlAclEntry>(
              map['authorizedNetworks'],
              (value) =>
                  SqlAclEntry.fromMap((value as Map).cast<String, dynamic>()),
            ),
      enableIpv4: map['enableIpv4'] == null ? null : map['enableIpv4'] as bool,
      privateNetwork: map['privateNetwork'] == null
          ? null
          : map['privateNetwork'] as String,
      requireSsl: map['requireSsl'] == null ? null : map['requireSsl'] as bool,
    );
  }
}
