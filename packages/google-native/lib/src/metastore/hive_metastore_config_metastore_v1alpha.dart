// ignore_for_file: unused_element, unnecessary_cast

import 'hive_metastore_config_endpoint_protocol_metastore_v1alpha.dart';
import 'kerberos_config_metastore_v1alpha.dart';

/// Specifies configuration information specific to running Hive metastore software as the metastore service.
class HiveMetastoreConfigMetastoreV1alpha {
  /// A mapping of Hive metastore version to the auxiliary version configuration. When specified, a secondary Hive metastore service is created along with the primary service. All auxiliary versions must be less than the service's primary version. The key is the auxiliary service name and it must match the regular expression a-z?. This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  final Map<String, String>? auxiliaryVersions;

  /// A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml). The mappings override system defaults (some keys cannot be overridden). These overrides are also applied to auxiliary versions and can be further customized in the auxiliary version's AuxiliaryVersionConfig.
  final Map<String, String>? configOverrides;

  /// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
  final HiveMetastoreConfigEndpointProtocolMetastoreV1alpha? endpointProtocol;

  /// Information used to configure the Hive metastore service as a service principal in a Kerberos realm. To disable Kerberos, use the UpdateService method and specify this field's path (hive_metastore_config.kerberos_config) in the request's update_mask while omitting this field from the request's service.
  final KerberosConfigMetastoreV1alpha? kerberosConfig;

  /// Immutable. The Hive metastore schema version.
  final String? version;

  /// Creates a new [HiveMetastoreConfigMetastoreV1alpha].
  /// [auxiliaryVersions] A mapping of Hive metastore version to the auxiliary version configuration. When specified, a secondary Hive metastore service is created along with the primary service. All auxiliary versions must be less than the service's primary version. The key is the auxiliary service name and it must match the regular expression a-z?. This means that the first character must be a lowercase letter, and all the following characters must be hyphens, lowercase letters, or digits, except the last character, which cannot be a hyphen.
  /// [configOverrides] A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml). The mappings override system defaults (some keys cannot be overridden). These overrides are also applied to auxiliary versions and can be further customized in the auxiliary version's AuxiliaryVersionConfig.
  /// [endpointProtocol] The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
  /// [kerberosConfig] Information used to configure the Hive metastore service as a service principal in a Kerberos realm. To disable Kerberos, use the UpdateService method and specify this field's path (hive_metastore_config.kerberos_config) in the request's update_mask while omitting this field from the request's service.
  /// [version] Immutable. The Hive metastore schema version.
  HiveMetastoreConfigMetastoreV1alpha({
    this.auxiliaryVersions,
    this.configOverrides,
    this.endpointProtocol,
    this.kerberosConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auxiliaryVersionsValue = auxiliaryVersions;
    if (auxiliaryVersionsValue != null) {
      map['auxiliaryVersions'] = auxiliaryVersionsValue;
    }
    final configOverridesValue = configOverrides;
    if (configOverridesValue != null) {
      map['configOverrides'] = configOverridesValue;
    }
    final endpointProtocolValue = endpointProtocol;
    if (endpointProtocolValue != null) {
      map['endpointProtocol'] = endpointProtocolValue.value;
    }
    final kerberosConfigValue = kerberosConfig;
    if (kerberosConfigValue != null) {
      map['kerberosConfig'] = kerberosConfigValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory HiveMetastoreConfigMetastoreV1alpha.fromMap(
      Map<String, dynamic> map) {
    return HiveMetastoreConfigMetastoreV1alpha(
      auxiliaryVersions: map['auxiliaryVersions'] == null
          ? null
          : (map['auxiliaryVersions'] as Map).cast<String, String>(),
      configOverrides: map['configOverrides'] == null
          ? null
          : (map['configOverrides'] as Map).cast<String, String>(),
      endpointProtocol: map['endpointProtocol'] == null
          ? null
          : HiveMetastoreConfigEndpointProtocolMetastoreV1alpha.fromValue(
              map['endpointProtocol'] as String),
      kerberosConfig: map['kerberosConfig'] == null
          ? null
          : KerberosConfigMetastoreV1alpha.fromMap(
              (map['kerberosConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
