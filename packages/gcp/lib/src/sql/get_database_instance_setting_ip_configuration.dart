// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instance_setting_ip_configuration_authorized_network.dart';
import 'get_database_instance_setting_ip_configuration_psc_config.dart';

class GetDatabaseInstanceSettingIpConfiguration {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final String allocatedIpRange;
  final List<GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork>
      authorizedNetworks;

  /// The custom subject alternative names for an instance with "CUSTOMER_MANAGED_CAS_CA" as the "server_ca_mode".
  final List<String> customSubjectAlternativeNames;

  /// Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported.
  final bool enablePrivatePathForGoogleCloudServices;

  /// Whether this Cloud SQL instance should be assigned a public IPV4 address. At least ipv4_enabled must be enabled or a private_network must be configured.
  final bool ipv4Enabled;

  /// The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least ipv4_enabled must be enabled or a private_network must be configured. This setting can be updated, but it cannot be removed after it is set.
  final String privateNetwork;

  /// PSC settings for a Cloud SQL instance.
  final List<GetDatabaseInstanceSettingIpConfigurationPscConfig> pscConfigs;

  /// Specify how the server certificate's Certificate Authority is hosted.
  final String serverCaMode;

  /// The resource name of the server CA pool for an instance with "CUSTOMER_MANAGED_CAS_CA" as the "server_ca_mode".
  final String serverCaPool;

  /// Specify how SSL connection should be enforced in DB connections.
  final String sslMode;

  /// Creates a new [GetDatabaseInstanceSettingIpConfiguration].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [authorizedNetworks] Required.
  /// [customSubjectAlternativeNames] The custom subject alternative names for an instance with "CUSTOMER_MANAGED_CAS_CA" as the "server_ca_mode".
  /// [enablePrivatePathForGoogleCloudServices] Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported.
  /// [ipv4Enabled] Whether this Cloud SQL instance should be assigned a public IPV4 address. At least ipv4_enabled must be enabled or a private_network must be configured.
  /// [privateNetwork] The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least ipv4_enabled must be enabled or a private_network must be configured. This setting can be updated, but it cannot be removed after it is set.
  /// [pscConfigs] PSC settings for a Cloud SQL instance.
  /// [serverCaMode] Specify how the server certificate's Certificate Authority is hosted.
  /// [serverCaPool] The resource name of the server CA pool for an instance with "CUSTOMER_MANAGED_CAS_CA" as the "server_ca_mode".
  /// [sslMode] Specify how SSL connection should be enforced in DB connections.
  GetDatabaseInstanceSettingIpConfiguration({
    required this.allocatedIpRange,
    required this.authorizedNetworks,
    required this.customSubjectAlternativeNames,
    required this.enablePrivatePathForGoogleCloudServices,
    required this.ipv4Enabled,
    required this.privateNetwork,
    required this.pscConfigs,
    required this.serverCaMode,
    required this.serverCaPool,
    required this.sslMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedIpRange'] = allocatedIpRange;
    map['authorizedNetworks'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork,
        Map<String, dynamic>>(authorizedNetworks, (value) => value.toMap());
    map['customSubjectAlternativeNames'] = customSubjectAlternativeNames;
    map['enablePrivatePathForGoogleCloudServices'] =
        enablePrivatePathForGoogleCloudServices;
    map['ipv4Enabled'] = ipv4Enabled;
    map['privateNetwork'] = privateNetwork;
    map['pscConfigs'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingIpConfigurationPscConfig,
        Map<String, dynamic>>(pscConfigs, (value) => value.toMap());
    map['serverCaMode'] = serverCaMode;
    map['serverCaPool'] = serverCaPool;
    map['sslMode'] = sslMode;
    return map;
  }

  factory GetDatabaseInstanceSettingIpConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingIpConfiguration(
      allocatedIpRange: map['allocatedIpRange'] as String,
      authorizedNetworks: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork>(
          map['authorizedNetworks'],
          (value) => GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork
              .fromMap((value as Map).cast<String, dynamic>())),
      customSubjectAlternativeNames:
          (map['customSubjectAlternativeNames'] as List).cast<String>(),
      enablePrivatePathForGoogleCloudServices:
          map['enablePrivatePathForGoogleCloudServices'] as bool,
      ipv4Enabled: map['ipv4Enabled'] as bool,
      privateNetwork: map['privateNetwork'] as String,
      pscConfigs: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingIpConfigurationPscConfig>(
          map['pscConfigs'],
          (value) => GetDatabaseInstanceSettingIpConfigurationPscConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      serverCaMode: map['serverCaMode'] as String,
      serverCaPool: map['serverCaPool'] as String,
      sslMode: map['sslMode'] as String,
    );
  }
}
