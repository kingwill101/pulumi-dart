// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_metastore_service_hive_metastore_config_auxiliary_version/get_metastore_service_hive_metastore_config_auxiliary_version.dart';
import '../get_metastore_service_hive_metastore_config_kerberos_config/get_metastore_service_hive_metastore_config_kerberos_config.dart';

class GetMetastoreServiceHiveMetastoreConfig {
  /// A mapping of Hive metastore version to the auxiliary version configuration.
  /// When specified, a secondary Hive metastore service is created along with the primary service.
  /// All auxiliary versions must be less than the service's primary version.
  /// The key is the auxiliary service name and it must match the regular expression a-z?.
  /// This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  final List<GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion>
      auxiliaryVersions;

  /// A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml).
  /// The mappings override system defaults (some keys cannot be overridden)
  final Map<String, String> configOverrides;

  /// The protocol to use for the metastore service endpoint. If unspecified, defaults to 'THRIFT'. Default value: "THRIFT" Possible values: ["THRIFT", "GRPC"]
  final String endpointProtocol;

  /// Information used to configure the Hive metastore service as a service principal in a Kerberos realm.
  final List<GetMetastoreServiceHiveMetastoreConfigKerberosConfig>
      kerberosConfigs;

  /// The Hive metastore schema version.
  final String version;

  GetMetastoreServiceHiveMetastoreConfig({
    required this.auxiliaryVersions,
    required this.configOverrides,
    required this.endpointProtocol,
    required this.kerberosConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auxiliaryVersions'] = pulumi.Input.encodeList<
        GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion,
        Map<String, dynamic>>(auxiliaryVersions, (value) => value.toMap());
    map['configOverrides'] = configOverrides;
    map['endpointProtocol'] = endpointProtocol;
    map['kerberosConfigs'] = pulumi.Input.encodeList<
        GetMetastoreServiceHiveMetastoreConfigKerberosConfig,
        Map<String, dynamic>>(kerberosConfigs, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory GetMetastoreServiceHiveMetastoreConfig.fromMap(
      Map<String, dynamic> map) {
    return GetMetastoreServiceHiveMetastoreConfig(
      auxiliaryVersions: pulumi.Input.decodeList<
              GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion>(
          map['auxiliaryVersions'],
          (value) =>
              GetMetastoreServiceHiveMetastoreConfigAuxiliaryVersion.fromMap(
                  (value as Map).cast<String, dynamic>())),
      configOverrides: (map['configOverrides'] as Map).cast<String, String>(),
      endpointProtocol: map['endpointProtocol'] as String,
      kerberosConfigs: pulumi.Input.decodeList<
              GetMetastoreServiceHiveMetastoreConfigKerberosConfig>(
          map['kerberosConfigs'],
          (value) =>
              GetMetastoreServiceHiveMetastoreConfigKerberosConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}
