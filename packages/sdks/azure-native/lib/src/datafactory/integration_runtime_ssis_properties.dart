// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'az_power_shell_setup.dart';
import 'credential_reference.dart';
import 'integration_runtime_custom_setup_script_properties.dart';
import 'integration_runtime_data_proxy_properties.dart';
import 'integration_runtime_ssis_catalog_info.dart';
import 'package_store.dart';

/// SSIS properties for managed integration runtime.
class IntegrationRuntimeSsisProperties {
  /// Catalog information for managed dedicated integration runtime.
  final IntegrationRuntimeSsisCatalogInfo? catalogInfo;
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// Custom setup script properties for a managed dedicated integration runtime.
  final IntegrationRuntimeCustomSetupScriptProperties? customSetupScriptProperties;
  /// Data proxy properties for a managed dedicated integration runtime.
  final IntegrationRuntimeDataProxyProperties? dataProxyProperties;
  /// The edition for the SSIS Integration Runtime
  final String? edition;
  /// Custom setup without script properties for a SSIS integration runtime.
  final List<AzPowerShellSetup>? expressCustomSetupProperties;
  /// License type for bringing your own license scenario.
  final String? licenseType;
  /// Package stores for the SSIS Integration Runtime.
  final List<PackageStore>? packageStores;

  /// Creates a new [IntegrationRuntimeSsisProperties].
  /// [catalogInfo] Catalog information for managed dedicated integration runtime.
  /// [credential] The credential reference containing authentication information.
  /// [customSetupScriptProperties] Custom setup script properties for a managed dedicated integration runtime.
  /// [dataProxyProperties] Data proxy properties for a managed dedicated integration runtime.
  /// [edition] The edition for the SSIS Integration Runtime
  /// [expressCustomSetupProperties] Custom setup without script properties for a SSIS integration runtime.
  /// [licenseType] License type for bringing your own license scenario.
  /// [packageStores] Package stores for the SSIS Integration Runtime.
  IntegrationRuntimeSsisProperties({
    this.catalogInfo,
    this.credential,
    this.customSetupScriptProperties,
    this.dataProxyProperties,
    this.edition,
    this.expressCustomSetupProperties,
    this.licenseType,
    this.packageStores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogInfo': ?catalogInfo == null ? null : catalogInfo!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'customSetupScriptProperties': ?customSetupScriptProperties == null ? null : customSetupScriptProperties!.toMap(),
      'dataProxyProperties': ?dataProxyProperties == null ? null : dataProxyProperties!.toMap(),
      'edition': ?edition,
      'expressCustomSetupProperties': ?expressCustomSetupProperties == null ? null : pulumi.Input.encodeList<AzPowerShellSetup, Map<String, dynamic>>(expressCustomSetupProperties!, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'packageStores': ?packageStores == null ? null : pulumi.Input.encodeList<PackageStore, Map<String, dynamic>>(packageStores!, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeSsisProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisProperties(
      catalogInfo: map['catalogInfo'] == null ? null : IntegrationRuntimeSsisCatalogInfo.fromMap((map['catalogInfo'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      customSetupScriptProperties: map['customSetupScriptProperties'] == null ? null : IntegrationRuntimeCustomSetupScriptProperties.fromMap((map['customSetupScriptProperties'] as Map).cast<String, dynamic>()),
      dataProxyProperties: map['dataProxyProperties'] == null ? null : IntegrationRuntimeDataProxyProperties.fromMap((map['dataProxyProperties'] as Map).cast<String, dynamic>()),
      edition: map['edition'] == null ? null : map['edition'] as String,
      expressCustomSetupProperties: map['expressCustomSetupProperties'] == null ? null : pulumi.Input.decodeList<AzPowerShellSetup>(map['expressCustomSetupProperties'], (value) => AzPowerShellSetup.fromMap((value as Map).cast<String, dynamic>())),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      packageStores: map['packageStores'] == null ? null : pulumi.Input.decodeList<PackageStore>(map['packageStores'], (value) => PackageStore.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

