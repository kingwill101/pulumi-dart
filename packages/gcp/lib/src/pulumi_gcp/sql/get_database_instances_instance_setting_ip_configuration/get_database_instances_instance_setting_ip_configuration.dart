// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_database_instances_instance_setting_ip_configuration_authorized_network/get_database_instances_instance_setting_ip_configuration_authorized_network.dart';
import '../get_database_instances_instance_setting_ip_configuration_psc_config/get_database_instances_instance_setting_ip_configuration_psc_config.dart';

class GetDatabaseInstancesInstanceSettingIpConfiguration {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final String allocatedIpRange;
  final List<
          GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork>
      authorizedNetworks;

  /// The custom subject alternative names for an instance with "CUSTOMER_MANAGED_CAS_CA" as the <span pulumi-lang-nodejs=""serverCaMode"" pulumi-lang-dotnet=""ServerCaMode"" pulumi-lang-go=""serverCaMode"" pulumi-lang-python=""server_ca_mode"" pulumi-lang-yaml=""serverCaMode"" pulumi-lang-java=""serverCaMode"">"server_ca_mode"</span>.
  final List<String> customSubjectAlternativeNames;

  /// Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported.
  final bool enablePrivatePathForGoogleCloudServices;

  /// Whether this Cloud SQL instance should be assigned a public IPV4 address. At least<span pulumi-lang-nodejs=" ipv4Enabled " pulumi-lang-dotnet=" Ipv4Enabled " pulumi-lang-go=" ipv4Enabled " pulumi-lang-python=" ipv4_enabled " pulumi-lang-yaml=" ipv4Enabled " pulumi-lang-java=" ipv4Enabled "> ipv4_enabled </span>must be enabled or a<span pulumi-lang-nodejs=" privateNetwork " pulumi-lang-dotnet=" PrivateNetwork " pulumi-lang-go=" privateNetwork " pulumi-lang-python=" private_network " pulumi-lang-yaml=" privateNetwork " pulumi-lang-java=" privateNetwork "> private_network </span>must be configured.
  final bool ipv4Enabled;

  /// The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least<span pulumi-lang-nodejs=" ipv4Enabled " pulumi-lang-dotnet=" Ipv4Enabled " pulumi-lang-go=" ipv4Enabled " pulumi-lang-python=" ipv4_enabled " pulumi-lang-yaml=" ipv4Enabled " pulumi-lang-java=" ipv4Enabled "> ipv4_enabled </span>must be enabled or a<span pulumi-lang-nodejs=" privateNetwork " pulumi-lang-dotnet=" PrivateNetwork " pulumi-lang-go=" privateNetwork " pulumi-lang-python=" private_network " pulumi-lang-yaml=" privateNetwork " pulumi-lang-java=" privateNetwork "> private_network </span>must be configured. This setting can be updated, but it cannot be removed after it is set.
  final String privateNetwork;

  /// PSC settings for a Cloud SQL instance.
  final List<GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig>
      pscConfigs;

  /// Specify how the server certificate's Certificate Authority is hosted.
  final String serverCaMode;

  /// The resource name of the server CA pool for an instance with "CUSTOMER_MANAGED_CAS_CA" as the <span pulumi-lang-nodejs=""serverCaMode"" pulumi-lang-dotnet=""ServerCaMode"" pulumi-lang-go=""serverCaMode"" pulumi-lang-python=""server_ca_mode"" pulumi-lang-yaml=""serverCaMode"" pulumi-lang-java=""serverCaMode"">"server_ca_mode"</span>.
  final String serverCaPool;

  /// Specify how SSL connection should be enforced in DB connections.
  final String sslMode;

  GetDatabaseInstancesInstanceSettingIpConfiguration({
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
    map['authorizedNetworks'] = Input.encodeList<
        GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork,
        Map<String, dynamic>>(authorizedNetworks, (value) => value.toMap());
    map['customSubjectAlternativeNames'] = customSubjectAlternativeNames;
    map['enablePrivatePathForGoogleCloudServices'] =
        enablePrivatePathForGoogleCloudServices;
    map['ipv4Enabled'] = ipv4Enabled;
    map['privateNetwork'] = privateNetwork;
    map['pscConfigs'] = Input.encodeList<
        GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig,
        Map<String, dynamic>>(pscConfigs, (value) => value.toMap());
    map['serverCaMode'] = serverCaMode;
    map['serverCaPool'] = serverCaPool;
    map['sslMode'] = sslMode;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingIpConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingIpConfiguration(
      allocatedIpRange: map['allocatedIpRange'] as String,
      authorizedNetworks: Input.decodeList<
              GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork>(
          map['authorizedNetworks'],
          (value) =>
              GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork
                  .fromMap((value as Map).cast<String, dynamic>())),
      customSubjectAlternativeNames:
          (map['customSubjectAlternativeNames'] as List).cast<String>(),
      enablePrivatePathForGoogleCloudServices:
          map['enablePrivatePathForGoogleCloudServices'] as bool,
      ipv4Enabled: map['ipv4Enabled'] as bool,
      privateNetwork: map['privateNetwork'] as String,
      pscConfigs: Input.decodeList<
              GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig>(
          map['pscConfigs'],
          (value) => GetDatabaseInstancesInstanceSettingIpConfigurationPscConfig
              .fromMap((value as Map).cast<String, dynamic>())),
      serverCaMode: map['serverCaMode'] as String,
      serverCaPool: map['serverCaPool'] as String,
      sslMode: map['sslMode'] as String,
    );
  }
}
