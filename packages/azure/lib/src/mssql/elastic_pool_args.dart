// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_pool_per_database_settings.dart';
import 'elastic_pool_sku.dart';

/// {@template pulumi_mssql_elastic_pool_elastic_pool_args_doc}
/// The set of arguments for ElasticPool.
/// {@endtemplate}
/// {@macro pulumi_mssql_elastic_pool_elastic_pool_args_doc}
class ElasticPoolArgs {
  /// Specifies the type of enclave to be used by the elastic pool. When `enclave_type` is not specified (e.g., the default) enclaves are not enabled on the elastic pool. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclave_type` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  ///
  /// > **Note:** All databases that are added to the elastic pool must have the same `enclave_type` as the elastic pool.
  ///
  /// > **Note:** `enclave_type` is not supported for DC-series SKUs.
  ///
  /// > **Note:** The default value for `enclave_type` field is unset not `Default`.
  final pulumi.Input<String>? enclaveType;
  /// Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  final pulumi.Input<String>? licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Public Maintenance Configuration window to apply to the elastic pool. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  final pulumi.Input<String>? maintenanceConfigurationName;
  /// The max data size of the elastic pool in bytes. Conflicts with `max_size_gb`.
  ///
  /// > **Note:** One of either `max_size_gb` or `max_size_bytes` must be specified.
  final pulumi.Input<int>? maxSizeBytes;
  /// The max data size of the elastic pool in gigabytes. Conflicts with `max_size_bytes`.
  final pulumi.Input<double>? maxSizeGb;
  /// The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `per_database_settings` block as defined below.
  final pulumi.Input<ElasticPoolPerDatabaseSettings> perDatabaseSettings;
  /// The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverName;
  /// A `sku` block as defined below.
  final pulumi.Input<ElasticPoolSku> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether or not this elastic pool is zone redundant. `tier` needs to be `Premium` for `DTU` based or `BusinessCritical` for `vCore` based `sku`.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [ElasticPoolArgs].
  /// [enclaveType] Specifies the type of enclave to be used by the elastic pool. When `enclave_type` is not specified (e.g., the default) enclaves are not enabled on the elastic pool. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclave_type` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  /// [licenseType] Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationName] The name of the Public Maintenance Configuration window to apply to the elastic pool. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  /// [maxSizeBytes] The max data size of the elastic pool in bytes. Conflicts with `max_size_gb`.
  /// [maxSizeGb] The max data size of the elastic pool in gigabytes. Conflicts with `max_size_bytes`.
  /// [name] The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created.
  /// [perDatabaseSettings] A `per_database_settings` block as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created.
  /// [serverName] The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundant] Whether or not this elastic pool is zone redundant. `tier` needs to be `Premium` for `DTU` based or `BusinessCritical` for `vCore` based `sku`.
  ElasticPoolArgs({
    String? enclaveType,
    String? licenseType,
    String? location,
    String? maintenanceConfigurationName,
    int? maxSizeBytes,
    double? maxSizeGb,
    String? name,
    required ElasticPoolPerDatabaseSettings perDatabaseSettings,
    required String resourceGroupName,
    required String serverName,
    required ElasticPoolSku sku,
    Map<String, String>? tags,
    bool? zoneRedundant,
  }) :
      enclaveType = pulumi.Input.asOptionalInput<String>(enclaveType),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationName = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationName),
      maxSizeBytes = pulumi.Input.asOptionalInput<int>(maxSizeBytes),
      maxSizeGb = pulumi.Input.asOptionalInput<double>(maxSizeGb),
      name = pulumi.Input.asOptionalInput<String>(name),
      perDatabaseSettings = pulumi.Input.asInput<ElasticPoolPerDatabaseSettings>(perDatabaseSettings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      sku = pulumi.Input.asInput<ElasticPoolSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveType': ?enclaveType,
      'licenseType': ?licenseType,
      'location': ?location,
      'maintenanceConfigurationName': ?maintenanceConfigurationName,
      'maxSizeBytes': ?maxSizeBytes,
      'maxSizeGb': ?maxSizeGb,
      'name': ?name,
      'perDatabaseSettings': pulumi.Input.mapInputValue<ElasticPoolPerDatabaseSettings, Map<String, dynamic>>(perDatabaseSettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'sku': pulumi.Input.mapInputValue<ElasticPoolSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ElasticPoolArgs.fromMap(Map<String, dynamic> map) {
    return ElasticPoolArgs(
      enclaveType: map['enclaveType'] == null ? null : map['enclaveType'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceConfigurationName: map['maintenanceConfigurationName'] == null ? null : map['maintenanceConfigurationName'] as String,
      maxSizeBytes: map['maxSizeBytes'] == null ? null : map['maxSizeBytes'] as int,
      maxSizeGb: map['maxSizeGb'] == null ? null : map['maxSizeGb'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      perDatabaseSettings: ElasticPoolPerDatabaseSettings.fromMap((map['perDatabaseSettings'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      sku: ElasticPoolSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant'] as bool,
    );
  }
}

