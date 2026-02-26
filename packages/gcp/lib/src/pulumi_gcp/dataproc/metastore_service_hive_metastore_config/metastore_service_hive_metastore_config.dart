// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metastore_service_hive_metastore_config_auxiliary_version/metastore_service_hive_metastore_config_auxiliary_version.dart';
import '../metastore_service_hive_metastore_config_kerberos_config/metastore_service_hive_metastore_config_kerberos_config.dart';

class MetastoreServiceHiveMetastoreConfig {
  /// A mapping of Hive metastore version to the auxiliary version configuration.
  /// When specified, a secondary Hive metastore service is created along with the primary service.
  /// All auxiliary versions must be less than the service's primary version.
  /// The key is the auxiliary service name and it must match the regular expression a-z?.
  /// This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  /// Structure is documented below.
  final List<MetastoreServiceHiveMetastoreConfigAuxiliaryVersion>?
      auxiliaryVersions;

  /// A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml).
  /// The mappings override system defaults (some keys cannot be overridden)
  final Map<String, String>? configOverrides;

  /// The protocol to use for the metastore service endpoint. If unspecified, defaults to `THRIFT`.
  /// Default value is `THRIFT`.
  /// Possible values are: `THRIFT`, `GRPC`.
  final String? endpointProtocol;

  /// Information used to configure the Hive metastore service as a service principal in a Kerberos realm.
  /// Structure is documented below.
  final MetastoreServiceHiveMetastoreConfigKerberosConfig? kerberosConfig;

  /// The Hive metastore schema version.
  final String version;

  MetastoreServiceHiveMetastoreConfig({
    this.auxiliaryVersions,
    this.configOverrides,
    this.endpointProtocol,
    this.kerberosConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auxiliaryVersionsValue = auxiliaryVersions;
    if (auxiliaryVersionsValue != null) {
      map['auxiliaryVersions'] = Input.encodeList<
              MetastoreServiceHiveMetastoreConfigAuxiliaryVersion,
              Map<String, dynamic>>(
          auxiliaryVersionsValue, (value) => value.toMap());
    }
    final configOverridesValue = configOverrides;
    if (configOverridesValue != null) {
      map['configOverrides'] = configOverridesValue;
    }
    final endpointProtocolValue = endpointProtocol;
    if (endpointProtocolValue != null) {
      map['endpointProtocol'] = endpointProtocolValue;
    }
    final kerberosConfigValue = kerberosConfig;
    if (kerberosConfigValue != null) {
      map['kerberosConfig'] = kerberosConfigValue.toMap();
    }
    map['version'] = version;
    return map;
  }

  factory MetastoreServiceHiveMetastoreConfig.fromMap(
      Map<String, dynamic> map) {
    return MetastoreServiceHiveMetastoreConfig(
      auxiliaryVersions: map['auxiliaryVersions'] == null
          ? null
          : Input.decodeList<
                  MetastoreServiceHiveMetastoreConfigAuxiliaryVersion>(
              map['auxiliaryVersions'],
              (value) =>
                  MetastoreServiceHiveMetastoreConfigAuxiliaryVersion.fromMap(
                      (value as Map).cast<String, dynamic>())),
      configOverrides: map['configOverrides'] == null
          ? null
          : (map['configOverrides'] as Map).cast<String, String>(),
      endpointProtocol: map['endpointProtocol'] == null
          ? null
          : map['endpointProtocol'] as String,
      kerberosConfig: map['kerberosConfig'] == null
          ? null
          : MetastoreServiceHiveMetastoreConfigKerberosConfig.fromMap(
              (map['kerberosConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
