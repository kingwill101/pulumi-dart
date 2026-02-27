// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_entry_response_sqladmin_v1beta4.dart';
import 'psc_config_response_sqladmin_v1beta4.dart';

/// IP Management configuration.
class IpConfigurationResponseSqladminV1beta4 {
  /// The name of the allocated ip range for the private ip Cloud SQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?.`
  final String allocatedIpRange;

  /// The list of external networks that are allowed to connect to the instance using the IP. In 'CIDR' notation, also known as 'slash' notation (for example: `157.197.200.0/24`).
  final List<AclEntryResponseSqladminV1beta4> authorizedNetworks;

  /// Controls connectivity to private IP instances from Google services, such as BigQuery.
  final bool enablePrivatePathForGoogleCloudServices;

  /// Whether the instance is assigned a public IP address or not.
  final bool ipv4Enabled;

  /// The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  final String privateNetwork;

  /// PSC settings for this instance.
  final PscConfigResponseSqladminV1beta4 pscConfig;

  /// Whether SSL/TLS connections over IP are enforced. If set to false, then allow both non-SSL/non-TLS and SSL/TLS connections. For SSL/TLS connections, the client certificate won't be verified. If set to true, then only allow connections encrypted with SSL/TLS and with valid client certificates. If you want to enforce SSL/TLS without enforcing the requirement for valid client certificates, then use the `ssl_mode` flag instead of the legacy `require_ssl` flag.
  final bool requireSsl;

  /// Specify how SSL/TLS is enforced in database connections. This flag is supported only for PostgreSQL. Use the legacy `require_ssl` flag for enforcing SSL/TLS in MySQL and SQL Server. But, for PostgreSQL, use the `ssl_mode` flag instead of the legacy `require_ssl` flag. To avoid the conflict between those flags in PostgreSQL, only the following value pairs are valid: * `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` * `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false` * `ssl_mode=TRUSTED_CLIENT_CERTIFICATE_REQUIRED` and `require_ssl=true` Note that the value of `ssl_mode` gets priority over the value of the legacy `require_ssl`. For example, for the pair `ssl_mode=ENCRYPTED_ONLY, require_ssl=false`, the `ssl_mode=ENCRYPTED_ONLY` means "only accepts SSL connection", while the `require_ssl=false` means "both non-SSL and SSL connections are allowed". The database respects `ssl_mode` in this case and only accepts SSL connections.
  final String sslMode;

  IpConfigurationResponseSqladminV1beta4({
    required this.allocatedIpRange,
    required this.authorizedNetworks,
    required this.enablePrivatePathForGoogleCloudServices,
    required this.ipv4Enabled,
    required this.privateNetwork,
    required this.pscConfig,
    required this.requireSsl,
    required this.sslMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedIpRange'] = allocatedIpRange;
    map['authorizedNetworks'] = pulumi.Input.encodeList<
        AclEntryResponseSqladminV1beta4,
        Map<String, dynamic>>(authorizedNetworks, (value) => value.toMap());
    map['enablePrivatePathForGoogleCloudServices'] =
        enablePrivatePathForGoogleCloudServices;
    map['ipv4Enabled'] = ipv4Enabled;
    map['privateNetwork'] = privateNetwork;
    map['pscConfig'] = pscConfig.toMap();
    map['requireSsl'] = requireSsl;
    map['sslMode'] = sslMode;
    return map;
  }

  factory IpConfigurationResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return IpConfigurationResponseSqladminV1beta4(
      allocatedIpRange: map['allocatedIpRange'] as String,
      authorizedNetworks:
          pulumi.Input.decodeList<AclEntryResponseSqladminV1beta4>(
              map['authorizedNetworks'],
              (value) => AclEntryResponseSqladminV1beta4.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enablePrivatePathForGoogleCloudServices:
          map['enablePrivatePathForGoogleCloudServices'] as bool,
      ipv4Enabled: map['ipv4Enabled'] as bool,
      privateNetwork: map['privateNetwork'] as String,
      pscConfig: PscConfigResponseSqladminV1beta4.fromMap(
          (map['pscConfig'] as Map).cast<String, dynamic>()),
      requireSsl: map['requireSsl'] as bool,
      sslMode: map['sslMode'] as String,
    );
  }
}
